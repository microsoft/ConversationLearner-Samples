import { LabeledEntity } from './TrainDialog';
import { EntityMetaData } from './Entity';
import { Metrics } from './Metrics';
import { AppDefinition } from './AppDefinition';
export declare class PredictedEntity extends LabeledEntity {
    score: number;
    metadata: EntityMetaData;
    constructor(init?: Partial<PredictedEntity>);
}
export declare class ExtractResponse {
    text: string;
    predictedEntities: PredictedEntity[];
    metrics: Metrics;
    packageId: string;
    definitions: AppDefinition;
    constructor(init?: Partial<ExtractResponse>);
}
