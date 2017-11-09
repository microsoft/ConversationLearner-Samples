export declare class AzureFunctions {
    static Call(azureFunctionsUrl: string, azureFunctionsKey: string, funcName: string, args: string): Promise<string>;
}
