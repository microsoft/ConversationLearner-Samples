import * as builder from 'botbuilder';
export declare class BlisDebug {
    static bot: any;
    static address: any;
    static cache: string;
    static enabled: boolean;
    static verbose: boolean;
    static logging: string;
    static InitLogger(bot: builder.UniversalBot): void;
    static SetAddress(address: any): void;
    private static SendCache();
    static Log(text: string, filter?: string): void;
    static LogRequest(method: string, path: string, payload: any): void;
    static Error(error: any): string;
    static Verbose(text: string): void;
    static LogObject(obj: any): void;
}
