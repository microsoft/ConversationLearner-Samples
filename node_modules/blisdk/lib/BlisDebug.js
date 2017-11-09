"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var builder = require("botbuilder");
var Utils_1 = require("./Utils");
var BlisDebug = (function () {
    function BlisDebug() {
    }
    BlisDebug.InitLogger = function (bot) {
        this.bot = bot;
    };
    BlisDebug.SetAddress = function (address) {
        this.address = address;
        this.SendCache();
    };
    BlisDebug.SendCache = function () {
        if (this.bot && this.address && this.cache) {
            var msg = new builder.Message().address(this.address);
            msg.text(this.cache);
            this.cache = "";
            this.bot.send(msg);
        }
    };
    BlisDebug.Log = function (text, filter) {
        if (!filter || this.logging.indexOf(filter) >= 0) {
            if (this.enabled) {
                this.cache += (this.cache ? "\n\n" : "") + text;
            }
            this.SendCache();
            console.log(text);
        }
    };
    BlisDebug.LogRequest = function (method, path, payload) {
        if (this.logging.indexOf("client") >= 0) {
            var msg = "    " + method + ": //" + path;
            if (this.enabled) {
                var text = JSON.stringify(payload.body);
                this.cache += (this.cache ? "\n\n" : "") + msg + "\n\n" + (text ? text : "");
            }
            this.SendCache();
            console.log(msg);
        }
    };
    BlisDebug.Error = function (error) {
        var text = error ? Utils_1.Utils.ErrorString(error) : "";
        BlisDebug.Log("ERROR: " + text);
        return text;
    };
    BlisDebug.Verbose = function (text) {
        if (this.verbose) {
            BlisDebug.Log("" + text);
        }
    };
    BlisDebug.LogObject = function (obj) {
        this.Log(JSON.stringify(obj));
    };
    BlisDebug.cache = "";
    BlisDebug.verbose = true;
    BlisDebug.logging = "client"; // "flow memory";
    return BlisDebug;
}());
exports.BlisDebug = BlisDebug;
//# sourceMappingURL=BlisDebug.js.map