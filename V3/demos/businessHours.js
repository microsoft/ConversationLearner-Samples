// Flip open status between true or false
var isOpen = true;
var isDuringBusinessHours = function() {
    isOpen = !isOpen;
    return isOpen;
} 

var LuisCallback = async function(defaultInput, memoryManager) {

    if (isDuringBusinessHours()) {
        await memoryManager.ForgetEntity("isClosed");    
    }
    else {
        await memoryManager.RememberEntity("isClosed", "true");         
    }

    // Update filled entities
    defaultInput.filledEntities = await memoryManager.GetFilledEntities();

    return defaultInput
}



exports.LuisCallback = LuisCallback;