import { ScoreResponse, ScoreInput } from './Score';
import { ExtractResponse } from './Extract';
import { Metrics } from './Metrics';
export declare class LogExtractorStep extends ExtractResponse {
    stepBeginDatetime: string;
    stepEndDatetime: string;
    constructor(init?: Partial<LogExtractorStep>);
}
export declare class LogScorerStep {
    input: ScoreInput;
    predictedAction: string;
    predictionDetails: ScoreResponse;
    stepBeginDatetime: string;
    stepEndDatetime: string;
    metrics: Metrics;
    constructor(init?: Partial<LogScorerStep>);
}
export declare class LogRound {
    extractorStep: LogExtractorStep;
    scorerSteps: LogScorerStep[];
    constructor(init?: Partial<LogRound>);
}
export declare class LogDialog {
    logDialogId: string;
    dialogBeginDatetime: string;
    dialogEndDatetime: string;
    packageId: number;
    metrics: string;
    rounds: LogRound[];
    constructor(init?: Partial<LogDialog>);
}
export declare class LogDialogList {
    logDialogs: LogDialog[];
    constructor(init?: Partial<LogDialogList>);
}
export declare class LogDialogIdList {
    logDialogIds: string[];
    constructor(init?: Partial<LogDialogIdList>);
}
