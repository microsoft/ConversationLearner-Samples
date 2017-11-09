"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var Credentials = (function () {
    function Credentials(user, secret) {
        if (!user)
            throw new Error("user is required");
        if (!secret)
            throw new Error("secret is required");
        this.User = user;
        this.Secret = secret;
    }
    Credentials.prototype.Cookiestring = function () {
        return "username=" + this.User + ";password=" + this.Secret;
    };
    return Credentials;
}());
exports.Credentials = Credentials;
//# sourceMappingURL=Credentials.js.map