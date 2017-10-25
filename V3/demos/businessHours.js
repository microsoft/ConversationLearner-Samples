// Flip open status between true or false
var isOpen = true;
var isDuringBusinessHours = function() {
    isOpen = !isOpen;
    return isOpen;
} 

var LuisCallback = async function(defaultInput, memoryManager) {

    if (isDuringBusinessHours()) {
        await memoryManager.ForgetEntityAsync("isClosed");    
    }
    else {
        await memoryManager.RememberEntityAsync("isClosed", "true");         
    }

    // Update filled entities
    defaultInput.filledEntities = await memoryManager.GetFilledEntitiesAsync();

    return defaultInput
}



exports.LuisCallback = LuisCallback;