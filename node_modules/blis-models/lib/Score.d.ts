import { Metrics } from './Metrics';
import { ActionMetaData } from './Action';
export declare class ScoreInput {
    filledEntities: string[];
    context: {};
    maskedActions: string[];
    constructor(init?: Partial<ScoreInput>);
}
export declare class ScoredBase {
    actionId: string;
    payload: string;
    isTerminal: boolean;
    metadata: ActionMetaData;
    constructor(init?: Partial<ScoredBase>);
}
export declare class UnscoredAction extends ScoredBase {
    reason: string;
    constructor(init?: Partial<UnscoredAction>);
}
export declare class ScoredAction extends ScoredBase {
    score: number;
    metadata: ActionMetaData;
    constructor(init?: Partial<ScoredAction>);
}
export declare class ScoreResponse {
    scoredActions: ScoredAction[];
    unscoredActions: UnscoredAction[];
    metrics: Metrics;
    constructor(init?: Partial<ScoreResponse>);
}
