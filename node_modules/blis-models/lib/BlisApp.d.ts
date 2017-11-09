export declare class BlisAppMetaData {
    botFrameworkApps: string[];
    constructor(init?: Partial<BlisAppMetaData>);
}
export declare class BlisAppBase {
    appName: string;
    appId: string;
    luisKey: string;
    locale: string;
    metadata: BlisAppMetaData;
    constructor(init?: Partial<BlisAppBase>);
}
export declare class BlisAppList {
    apps: BlisAppBase[];
    constructor(init?: Partial<BlisAppList>);
}
export declare class BlisAppIdList {
    appIds: string[];
    constructor(init?: Partial<BlisAppIdList>);
}
