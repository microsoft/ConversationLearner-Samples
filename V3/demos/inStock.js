var inStock = ["cheese", "sausuage", "mushrooms", "olives", "peppers"];
var isInStock = function(topping) {
    return (inStock.indexOf(topping.toLowerCase()) > -1);
}

var LuisCallback = async function(botInput, memoryManager) {

    // Clear OutOfStock List
    await memoryManager.ForgetEntity("OutOfStock");
            
    // Get list of requested Toppings
    let toppings = await memoryManager.EntityValueAsList("Toppings");

    // Check each to see if it is in stock
    for (let topping of toppings) {

        // If not in stock, move from Toppings List of OutOfStock list
        if (!isInStock(topping)) {
            await memoryManager.ForgetEntity("Toppings", topping);
            await memoryManager.RememberEntity("OutOfStock", topping);        
        }
    }
    // Update filled entities
    botInput.filledEntities = await memoryManager.GetFilledEntities();

    return botInput
}


var FinalizeOrder = async function(memoryManager, argArray) {

    let appName = await memoryManager.AppName();
    if (appName == "InStock")
    { 
        // Save toppings
        await memoryManager.CopyEntity("Toppings", "LastToppings");

        // Clear toppings
        await memoryManager.ForgetEntity("Toppings");

        return `Your pizza is on it's way`;
    }
}


var UseLastToppings = async function(memoryManager, argArray) {
    
    let appName = await memoryManager.AppName();
    if (appName == "InStock")
    { 
        // Restore last toppings
        await memoryManager.CopyEntity("LastToppings", "Toppings");

        // Clear last toppings
        await memoryManager.ForgetEntity("LastToppings"); 
    }
}

exports.LuisCallback = LuisCallback;
exports.FinalizeOrder = FinalizeOrder;
exports.UseLastToppings = UseLastToppings;
