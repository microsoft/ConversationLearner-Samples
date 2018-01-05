// Flip open status between true or false
var isOpen = true;
var isDuringBusinessHours = function() {
    isOpen = !isOpen;
    return isOpen;
} 

exports.EntityDetectionCallback = async function(text, predictedEntities, memoryManager) {

    if (isDuringBusinessHours()) {
        await memoryManager.ForgetEntityAsync("isClosed");    
    }
    else {
        await memoryManager.RememberEntityAsync("isClosed", "true");         
    }
}
