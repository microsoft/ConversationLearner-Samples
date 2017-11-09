export declare class Teach {
    teachId: string;
    createdDatetime: string;
    lastQueryDatetime: string;
    packageId: number;
    constructor(init?: Partial<Teach>);
}
export declare class TeachResponse {
    packageId: number;
    teachId: string;
    trainDialogId: string;
    constructor(init?: Partial<TeachResponse>);
}
export declare class TeachList {
    teaches: Teach[];
    constructor(init?: Partial<TeachList>);
}
export declare class TeachIdList {
    teachIds: string[];
    constructor(init?: Partial<TeachIdList>);
}
