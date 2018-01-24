import { Blis, IBlisOptions, ClientMemoryManager } from 'blis-sdk';

var inStock = ["cheese", "sausage", "mushroomsxx", "olives", "peppers"];
var isInStock = function(topping) {
    return (inStock.indexOf(topping.toLowerCase()) > -1);
}

exports.EntityDetectionCallback = async function(text, predictedEntities, memoryManager) {

    // Clear OutOfStock List
    await memoryManager.ForgetEntityAsync("OutOfStock");
            
    // Get list of requested Toppings
    let toppings = await memoryManager.EntityValueAsListAsync("Toppings");

    // Check each to see if it is in stock
    for (let topping of toppings) {

        // If not in stock, move from Toppings List of OutOfStock list
        if (!isInStock(topping)) {
            await memoryManager.ForgetEntityAsync("Toppings", topping);
            await memoryManager.RememberEntityAsync("OutOfStock", topping);        
        }
    }
}

Blis.AddAPICallback("FinalizeOrder", async (memoryManager : ClientMemoryManager) => 
    {

        let appName = await memoryManager.AppNameAsync();
        if (appName == "InStock")
        { 
            // Save toppings
            await memoryManager.CopyEntityAsync("Toppings", "LastToppings");

            // Clear toppings
            await memoryManager.ForgetEntityAsync("Toppings");
        }

        return "Your order is on it's way";
    }
);

Blis.AddAPICallback("UseLastToppings", async (memoryManager : ClientMemoryManager) =>
    {
        
        let appName = await memoryManager.AppNameAsync();
        if (appName == "InStock")
        { 
            // Restore last toppings
            await memoryManager.CopyEntityAsync("LastToppings", "Toppings");

            // Clear last toppings
            await memoryManager.ForgetEntityAsync("LastToppings"); 
        }
        return null;
    }
);
