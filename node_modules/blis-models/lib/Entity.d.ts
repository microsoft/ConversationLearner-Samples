export declare enum EntityType {
    LOCAL = "LOCAL",
    LUIS = "LUIS",
}
export declare class EntityMetaData {
    isBucket: boolean;
    /** If set, has a negative and positive version */
    isReversable: boolean;
    /** If Negatable, the Id of negative entity associates with this Entity */
    negativeId: string;
    /** If a Negative, Id of positive entity associated with this Entity */
    positiveId: string;
    constructor(init?: Partial<EntityMetaData>);
    /** Make negate of given metadata */
    MakeNegative(posId: string): EntityMetaData;
}
export declare class EntityBase {
    entityId: string;
    entityName: string;
    entityType: string;
    version: number;
    packageCreationId: number;
    packageDeletionId: number;
    metadata: EntityMetaData;
    constructor(init?: Partial<EntityBase>);
}
export declare class EntityList {
    entities: EntityBase[];
    constructor(init?: Partial<EntityList>);
}
export declare class EntityIdList {
    entityIds: string[];
    constructor(init?: Partial<EntityIdList>);
}
