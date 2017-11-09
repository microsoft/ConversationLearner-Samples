"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var KeyGen = (function () {
    function KeyGen() {
    }
    KeyGen.MakeKey = function (address) {
        return this.HashCode(address).toString();
    };
    KeyGen.HashCode = function (text) {
        var hash = 0, i, chr;
        if (text.length === 0)
            return hash;
        for (i = 0; i < text.length; i++) {
            chr = text.charCodeAt(i);
            hash = ((hash << 5) - hash) + chr;
            hash |= 0; // Convert to 32bit integer
        }
        return hash;
    };
    ;
    return KeyGen;
}());
exports.KeyGen = KeyGen;
//# sourceMappingURL=KeyGen.js.map