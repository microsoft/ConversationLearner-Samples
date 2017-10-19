var inStock = ["cheese", "sausuage", "mushrooms", "olives", "peppers"];
var isInStock = function(topping) {
    return (inStock.indexOf(topping.toLowerCase()) > -1);
}

var LuisCallback = async function(defaultInput, memoryManager) {

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
    defaultInput.filledEntities = await memoryManager.GetFilledEntities();

    return defaultInput
}


var FinalizeOrder = async function(memoryManager, argArray) {

    let appName = await memoryManager.AppName();
    if (appName == "InStock")
    { 
        // Get list of requested Toppings
        let toppings = await memoryManager.EntityValueAsList("Toppings");

        // Save previous topping for next order
        for (let topping of toppings) {
            await memoryManager.RememberEntity("LastToppings", topping); 
            await memoryManager.ForgetEntity("Toppings", topping);
        }
        return `Your pizza is on it's way`;

    }
}


var UseLastToppings = async function(memoryManager, argArray) {
    
        let appName = await memoryManager.AppName();
        if (appName == "InStock")
        { 
            // Get list of requested Toppings
            let lastToppings = await memoryManager.EntityValueAsList("LastTopping");
    
            // Save previous topping for next order
            for (let topping of lastToppings) {
                await memoryManager.ForgetEntity("LastToppings", topping); 
                await memoryManager.RemoveEntity("Toppings", topping);
            }
        }
    }

exports.LuisCallback = LuisCallback;
exports.FinalizeOrder = FinalizeOrder;
