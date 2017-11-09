import * as builder from 'botbuilder';
export interface IBlisResult extends builder.IIntentRecognizerResult {
    recognizer: BlisRecognizer;
}
export declare class BlisRecognizer implements builder.IIntentRecognizer {
    /** Receive input from user and returns a score */
    recognize(reginput: builder.IRecognizeContext, recCb: (error: Error, result: IBlisResult) => void): void;
}
