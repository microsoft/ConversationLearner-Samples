var blisdk = require('blisdk');

var inStock = ["cheese", "sausage", "mushrooms", "olives", "peppers"];
var isInStock = function(topping) {
    return (inStock.indexOf(topping.toLowerCase()) > -1);
}

exports.LuisCallback = async function(botInput, memoryManager) {

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
    // Update filled entities
    botInput.filledEntities = await memoryManager.GetFilledEntitiesAsync();

    return botInput
}

blisdk.APICallback("FinalizeOrder", async (memoryManager, argArray) => 
    {

        let appName = await memoryManager.AppNameAsync();
        if (appName == "InStock")
        { 
            // Save toppings
            await memoryManager.CopyEntityAsync("Toppings", "LastToppings");

            // Clear toppings
            await memoryManager.ForgetEntityAsync("Toppings");

            return `Your pizza is on it's way`;
        }
    }
);

blisdk.APICallback("UseLastToppings", async (memoryManager, argArray) =>
    {
        
        let appName = await memoryManager.AppNameAsync();
        if (appName == "InStock")
        { 
            // Restore last toppings
            await memoryManager.CopyEntityAsync("LastToppings", "Toppings");

            // Clear last toppings
            await memoryManager.ForgetEntityAsync("LastToppings"); 
        }
    }
);
