"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var BlisRecognizer = (function () {
    function BlisRecognizer() {
    }
    /** Receive input from user and returns a score */
    BlisRecognizer.prototype.recognize = function (reginput, recCb) {
        // Always recognize, but score is less than 1.0 so prompts can still win
        var result = { recognizer: this, score: 0.4, intent: null, entities: null };
        // Send callback
        recCb(null, result);
    };
    return BlisRecognizer;
}());
exports.BlisRecognizer = BlisRecognizer;
//# sourceMappingURL=BlisRecognizer.js.map