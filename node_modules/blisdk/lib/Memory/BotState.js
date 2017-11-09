"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var tslib_1 = require("tslib");
var BotState = (function () {
    function BotState(init) {
        this.appId = null;
        this.sessionId = null;
        this.inTeach = false;
        this.inDebug = false;
        this.address = null;
        Object.assign(this, init);
    }
    BotState.Get = function (blisMemory) {
        if (!BotState._instance) {
            BotState._instance = new BotState();
        }
        BotState._instance.memory = blisMemory;
        return BotState._instance;
    };
    BotState.prototype.Init = function () {
        return tslib_1.__awaiter(this, void 0, void 0, function () {
            var data;
            return tslib_1.__generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        if (!this.memory) {
                            throw new Error("BotState called without initializing memory");
                        }
                        return [4 /*yield*/, this.memory.GetAsync(BotState.MEMKEY)];
                    case 1:
                        data = _a.sent();
                        if (data) {
                            this.Deserialize(data);
                        }
                        else {
                            this.Clear(null);
                        }
                        return [2 /*return*/];
                }
            });
        });
    };
    BotState.prototype.GetSync = function (cb) {
        var _this = this;
        if (!this.memory) {
            throw new Error("BotState called without initialzing memory");
        }
        // Load bot state
        this.memory.Get(BotState.MEMKEY, function (err, data) {
            if (!err && data) {
                _this.Deserialize(data);
            }
            else {
                _this.Clear(null);
            }
            cb(null, _this);
        });
    };
    BotState.prototype.Deserialize = function (text) {
        if (!text)
            return null;
        var json = JSON.parse(text);
        this.appId = json.appId;
        this.sessionId = json.sessionId;
        this.inTeach = json.inTeach ? json.inTeach : false;
        this.inDebug = json.inDebug ? json.inDebug : false;
        this.address = json.address;
    };
    BotState.prototype.Serialize = function () {
        var jsonObj = {
            appId: this.appId,
            sessionId: this.sessionId,
            inTeach: this.inTeach ? this.inTeach : false,
            inDebug: this.inDebug ? this.inDebug : false,
            address: this.address
        };
        return JSON.stringify(jsonObj);
    };
    BotState.prototype.Set = function () {
        return tslib_1.__awaiter(this, void 0, void 0, function () {
            return tslib_1.__generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        if (!this.memory) {
                            throw new Error("BotState called without initialzing memory");
                        }
                        return [4 /*yield*/, this.memory.SetAsync(BotState.MEMKEY, this.Serialize())];
                    case 1:
                        _a.sent();
                        return [2 /*return*/];
                }
            });
        });
    };
    BotState.prototype.Clear = function (appId) {
        return tslib_1.__awaiter(this, void 0, void 0, function () {
            return tslib_1.__generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        this.appId = appId;
                        this.sessionId = null;
                        this.inTeach = false;
                        this.inDebug = false;
                        return [4 /*yield*/, this.Set()];
                    case 1:
                        _a.sent();
                        return [2 /*return*/];
                }
            });
        });
    };
    BotState.prototype.App = function () {
        return tslib_1.__awaiter(this, void 0, void 0, function () {
            var err_1;
            return tslib_1.__generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        _a.trys.push([0, 2, , 3]);
                        return [4 /*yield*/, this.Init()];
                    case 1:
                        _a.sent();
                        return [2 /*return*/, JSON.parse(this.appId)];
                    case 2:
                        err_1 = _a.sent();
                        return [2 /*return*/, null];
                    case 3: return [2 /*return*/];
                }
            });
        });
    };
    BotState.prototype.SetApp = function (blisApp) {
        return tslib_1.__awaiter(this, void 0, void 0, function () {
            return tslib_1.__generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.Init()];
                    case 1:
                        _a.sent();
                        this.appId = JSON.stringify(blisApp);
                        return [4 /*yield*/, this.Set()];
                    case 2:
                        _a.sent();
                        return [2 /*return*/];
                }
            });
        });
    };
    BotState.prototype.SessionId = function () {
        return tslib_1.__awaiter(this, void 0, void 0, function () {
            return tslib_1.__generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.Init()];
                    case 1:
                        _a.sent();
                        return [2 /*return*/, this.sessionId];
                }
            });
        });
    };
    BotState.prototype.SetSession = function (sessionId, inTeach) {
        return tslib_1.__awaiter(this, void 0, void 0, function () {
            return tslib_1.__generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.Init()];
                    case 1:
                        _a.sent();
                        this.sessionId = sessionId;
                        this.inTeach = inTeach;
                        return [4 /*yield*/, this.Set()];
                    case 2:
                        _a.sent();
                        return [2 /*return*/];
                }
            });
        });
    };
    BotState.prototype.InTeach = function () {
        return tslib_1.__awaiter(this, void 0, void 0, function () {
            return tslib_1.__generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.Init()];
                    case 1:
                        _a.sent();
                        return [2 /*return*/, this.inTeach];
                }
            });
        });
    };
    BotState.prototype.InTeachSync = function (cb) {
        this.GetSync(function (err, botState) {
            if (!err) {
                cb(null, botState.inTeach);
            }
        });
    };
    BotState.prototype.InDebug = function () {
        return tslib_1.__awaiter(this, void 0, void 0, function () {
            return tslib_1.__generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.Init()];
                    case 1:
                        _a.sent();
                        return [2 /*return*/, this.inDebug];
                }
            });
        });
    };
    BotState.prototype.SetInDebug = function (isTrue) {
        return tslib_1.__awaiter(this, void 0, void 0, function () {
            return tslib_1.__generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.Init()];
                    case 1:
                        _a.sent();
                        this.inDebug = isTrue;
                        return [4 /*yield*/, this.Set()];
                    case 2:
                        _a.sent();
                        return [2 /*return*/];
                }
            });
        });
    };
    BotState.prototype.SetAddress = function (address) {
        return tslib_1.__awaiter(this, void 0, void 0, function () {
            return tslib_1.__generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.Init()];
                    case 1:
                        _a.sent();
                        this.address = JSON.stringify(address);
                        return [4 /*yield*/, this.Set()];
                    case 2:
                        _a.sent();
                        return [2 /*return*/];
                }
            });
        });
    };
    BotState.prototype.Address = function () {
        return tslib_1.__awaiter(this, void 0, void 0, function () {
            var addressString, err_2;
            return tslib_1.__generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        _a.trys.push([0, 2, , 3]);
                        return [4 /*yield*/, this.Init()];
                    case 1:
                        _a.sent();
                        addressString = this.address;
                        return [2 /*return*/, JSON.parse(addressString)];
                    case 2:
                        err_2 = _a.sent();
                        return [2 /*return*/, null];
                    case 3: return [2 /*return*/];
                }
            });
        });
    };
    //------------------------------------------------------------------
    BotState.prototype.Session = function (bot) {
        return tslib_1.__awaiter(this, void 0, void 0, function () {
            var address;
            return tslib_1.__generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.Address()];
                    case 1:
                        address = _a.sent();
                        return [2 /*return*/, new Promise(function (resolve, reject) {
                                bot.loadSession(address, function (err, session) {
                                    if (err !== null) {
                                        reject(err);
                                    }
                                    else {
                                        resolve(session);
                                    }
                                });
                            })];
                }
            });
        });
    };
    BotState._instance = null;
    BotState.MEMKEY = "BOTSTATE";
    return BotState;
}());
exports.BotState = BotState;
//# sourceMappingURL=BotState.js.map