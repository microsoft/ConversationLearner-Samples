// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License.

import { TurnContext, ResourceResponse, Activity } from 'botbuilder';
import { MicrosoftTranslator } from './translator';

export class TranslatorMiddleware {
    private _translator = null;

    constructor(private to, private translatorKey, noTranslatePatterns?: { [id: string]: string[] }, wordDictionary?: { [id: string]: string }) {
        this.translatorKey = translatorKey;
        this._translator = new MicrosoftTranslator(this.translatorKey, noTranslatePatterns, wordDictionary);
        this.to = to;
    }

    /**
     * Called via BotAdapter.runMiddleware(), this method adds handlers to the TurnContext's sendActivities method to
     * translate the outgoing text.
     * @param {TurnContext} turnContext A TurnContext instance containing all the data needed for processing this conversation turn.
     * @param {Function} next The next middleware or business logic of the bot to run.
     */
    async onTurn(turnContext: TurnContext, next) {
        if (turnContext.activity.type === 'message') {
            const detectedLanguageId = (await this._translator.detect(turnContext.activity.text))[0].language;
            const shouldTranslate = detectedLanguageId !== this.to;

            if (shouldTranslate) {
                const options = {
                    from: detectedLanguageId,
                    to: this.to,
                    texts: [turnContext.activity.text]
                }
                const translationResult = await this._translator.translateArray(options);
                turnContext.activity.text = translationResult[0].translatedText;
            }

            turnContext.onSendActivities(async (ctx: TurnContext, activities: Partial<Activity>[], next2: () => Promise<ResourceResponse[]>) => {
                if (shouldTranslate) {
                    const options = {
                        from: this.to,
                        to: detectedLanguageId,
                        texts: activities.map(activity => activity.text)
                    }
                    const result = await this._translator.translateArray(options)
                    result.forEach((element, idx) => {
                        activities[idx].text = element.translatedText
                    });
                }
                return await next2();
            })

        }
        await next();
    }
}
