"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var Request = require("request");
var BlisDebug_1 = require("./BlisDebug");
var AzureFunctions = (function () {
    function AzureFunctions() {
    }
    AzureFunctions.Call = function (azureFunctionsUrl, azureFunctionsKey, funcName, args) {
        var apiPath = "app";
        if (azureFunctionsKey) {
            if (args) {
                args += "&code=" + azureFunctionsKey;
            }
            else {
                args = "?code=" + azureFunctionsKey;
            }
        }
        return new Promise(function (resolve, reject) {
            var requestData = {
                url: azureFunctionsUrl + funcName + "/" + args,
                /*          TODO - auth
                headers: {
                    'Cookie' : this.credentials.Cookiestring(),
                },*/
                /* TODO - params
                body: {
                    name: name,
                    LuisAuthKey: luisKey
                },
                */
                json: true
            };
            BlisDebug_1.BlisDebug.LogRequest("GET", apiPath, requestData);
            Request.get(requestData, function (error, response, body) {
                if (error) {
                    reject(error);
                }
                else if (response.statusCode >= 300) {
                    reject(body);
                }
                else {
                    resolve(body.Result);
                }
            });
        });
    };
    return AzureFunctions;
}());
exports.AzureFunctions = AzureFunctions;
//# sourceMappingURL=AzureFunctions.js.map