import * as builder from 'botbuilder';
import { BlisMemory } from './BlisMemory';
export declare class BlisContext {
    session: builder.Session;
    bot: builder.UniversalBot;
    private memory;
    constructor(bot: builder.UniversalBot, session: builder.Session);
    Address(): builder.IAddress;
    Memory(): BlisMemory;
}
