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

exports.LuisCallback = LuisCallback;