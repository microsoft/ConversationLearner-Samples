import { EntityBase } from './Entity';
import { ActionBase } from './Action';
export declare class AppDefinition {
    entities: EntityBase[];
    actions: ActionBase[];
    constructor(init?: Partial<AppDefinition>);
}
