import { Blis, IBlisOptions, ClientMemoryManager } from 'blis-sdk';
import { resolve } from 'url';

var apps = ["skype", "outlook", "amazon video", "amazon music"];

var resolveApps = function(appName) {
    return (apps.filter(n=>n.indexOf(appName) > -1));
}

exports.EntityDetectionCallback = async function(text, predictedEntities, memoryManager) {

    // Clear disambigApps
    await memoryManager.ForgetEntityAsync("DisambigAppNames");
    await memoryManager.ForgetEntityAsync("UnknownAppName");
            
    // Get list of (possibly) ambiguous apps
    var appName = await memoryManager.EntityValueAsListAsync("AppName");
    if (appName.length > 0) {
        var resolvedAppNames = resolveApps(appName);
        if (resolvedAppNames.length == 0) {
            await memoryManager.RememberEntityAsync("UnknownAppName", appName[0]);
            await memoryManager.ForgetEntityAsync("AppName");
        } else if (resolvedAppNames.length > 1) {
            await memoryManager.RememberEntitiesAsync("DisambigAppNames", resolvedAppNames);
            await memoryManager.ForgetEntityAsync("AppName");
        }
    }
}
