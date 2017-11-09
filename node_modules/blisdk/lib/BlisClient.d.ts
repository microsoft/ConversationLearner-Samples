import { ActionList, ActionIdList, BlisAppList, BlisAppIdList, EntityList, EntityIdList, LogDialog, LogDialogList, LogDialogIdList, TrainDialog, TrainResponse, TrainDialogList, TrainDialogIdList, Session, SessionList, SessionIdList, UserInput, ExtractResponse, ScoreInput, ScoreResponse, Teach, TeachResponse, TeachList, TeachIdList, TrainExtractorStep, TrainScorerStep, ActionBase, BlisAppBase, EntityBase } from 'blis-models';
export declare class BlisClient {
    user: string;
    static client: BlisClient;
    private static serviceURI;
    static Init(user: string, secret: string, azureFunctionsUrl: string, azureFunctionsKey: string): void;
    static SetServiceURI(serviceURI: string): void;
    private serviceUri;
    private credentials;
    azureFunctionsUrl: string;
    azureFunctionsKey: string;
    private actionCache;
    private entityCache;
    private exportCache;
    private constructor();
    private MakeURL(apiPath, query?);
    ClearExportCache(appId: string): void;
    /** Retrieves information about a specific action for the current package
     *  (or the specified package if provided) */
    GetAction(appId: string, actionId: string, query: string): Promise<ActionBase>;
    /** Retrieves definitions of ALL actions for the current package
     * (or the specified package if provided). To retrieve just the
     * IDs of actions, see the GetActionIds Method */
    GetActions(appId: string, query: string): Promise<ActionList>;
    /** Retrieves a list of action IDs for the latest package
     * (or the specified package, if provided).  To retrieve
     * the definitions of many actions, see the GetAction method */
    GetActionIds(appId: string, query: string): Promise<ActionIdList>;
    /** Updates payload and/or metadata on an existing action */
    EditAction(appId: string, action: ActionBase): Promise<string>;
    /** Marks an action as deleted */
    DeleteAction(appId: string, actionId: string): Promise<string>;
    /** Create a new action */
    AddAction(appId: string, action: ActionBase): Promise<string>;
    /** Retrieve information about a specific application
     * If the app ID isn't found in the set of (non-archived) apps,
     * returns 404 error ("not found")
     */
    GetApp(appId: string, query: string): Promise<BlisAppBase>;
    /** Retrieve a list of (active) applications */
    GetApps(query: string): Promise<BlisAppList>;
    /** Rename an existing application or changes its LUIS key
     * Note: Renaming an application does not affect packages
     */
    EditApp(app: BlisAppBase, query: string): Promise<string>;
    /** Archive an existing application
     * Note: "deleting" an application doesn't destroy it, but rather archives
     * it for a period (eg 30 days).  During the archive period, the application
     * can be restored with the next API call.  At the end of the archive period,
     * the application is destroyed.
     */
    ArchiveApp(appId: string): Promise<string>;
    /** Create a new application
     */
    AddApp(blisApp: BlisAppBase, query: string): Promise<string>;
    /** Destroys an existing application, including all its models, sessions, and logged dialogs
     * Deleting an application from the archive really destroys it – no undo.
     */
    DeleteApp(appId: string): Promise<string>;
    /** Retrieves details for a specific $appId*/
    GetAppStatus(appId: string): Promise<BlisAppBase>;
    /** Moves an application from the archive to the set of active applications */
    RestoreApp(appId: string): Promise<string>;
    /** Retrieves a list of application Ids in the archive for the given user */
    GetArchivedAppIds(query: string): Promise<BlisAppIdList>;
    /** Retrieves a list of full applications in the archive for the given user */
    GetArchivedApps(query: string): Promise<BlisAppList>;
    /** Retrieves information about a specific entity in the latest package
     * (or the specified package, if provided) */
    GetEntity(appId: string, entityId: string, query: string): Promise<EntityBase>;
    /** Retrieves definitions of ALL entities in the latest package
     * (or the specified package, if provided).  To retrieve just the IDs
     * of all entities, see the GetEntityIds method */
    GetEntities(appId: string, query: string): Promise<EntityList>;
    /** Retrieves a list of entity IDs for the latest package
     * (or the specified package, if provided).  To retrieve the definitions
     * of many entities, see the GetEntities method */
    GetEntityIds(appId: string, query: string): Promise<EntityIdList>;
    /** Updates name and/or metadata on an existing entity */
    EditEntity(appId: string, entity: EntityBase): Promise<string>;
    /** Deletes an entity */
    DeleteEntity(appId: string, entityId: string): Promise<string>;
    /** Create a new entity */
    AddEntity(appId: string, entity: EntityBase): Promise<string>;
    /** Retrieves information about a specific logDialog */
    GetLogDialog(appId: string, logDialogId: string): Promise<LogDialog>;
    /** Retrieves the contents of many/all logDialogs.
     * To retrieve just a list of IDs of all logDialogs,
     * see the GET GetLogDialogIds method. */
    GetLogDialogs(appId: string, query: string): Promise<LogDialogList>;
    /** Retrieves just the IDs of logDialogs.
     * To retrieve the contents of many logDialogs, see the GetLogDialogs method. */
    GetLogDialogIds(appId: string, query: string): Promise<LogDialogIdList>;
    /** Deletes a LogDialog */
    DeleteLogDialog(appId: string, logDialogId: string): Promise<string>;
    /** Runs entity extraction (prediction). */
    LogDialogExtract(appId: string, logDialogId: string, turnIndex: string, userInput: UserInput): Promise<ExtractResponse>;
    /** Create a new TrainDialog */
    AddTrainDialog(appId: string, trainDialog: TrainDialog): Promise<TrainResponse>;
    /** Updates a trainDialog, overwriting the content of its dialog */
    EditTrainDialog(appId: string, trainDialog: TrainDialog): Promise<TrainResponse>;
    /** Retrieves information about a specific trainDialog in the current package
     * (or the specified package, if provided) */
    GetTrainDialog(appId: string, trainDialogId: string): Promise<TrainDialog>;
    /** Retrieves the contents of many/all train dialogs.
     * To retrieve just a list of IDs of all trainDialogs,
     * see the GetTrainDialogIds method */
    GetTrainDialogs(appId: string, query: string): Promise<TrainDialogList>;
    /** Retrieves a list of trainDialog IDs.
     * To retrieve the contents of multiple trainDialogs,
     * see the GetTrainDialogs method */
    GetTrainDialogIds(appId: string, query: string): Promise<TrainDialogIdList>;
    /** Deletes a TrainDialog */
    DeleteTrainDialog(appId: string, trainDialogId: string): Promise<TrainResponse>;
    /** Runs entity extraction (prediction). */
    TrainDialogExtract(appId: string, trainDialogId: string, turnIndex: string, userInput: UserInput): Promise<ExtractResponse>;
    /** Creates a new session and a corresponding logDialog */
    StartSession(appId: string): Promise<Session>;
    /** Retrieves information about the specified session */
    GetSession(appId: string, sessionId: string): Promise<Session>;
    /** Runs entity extraction (prediction). */
    SessionExtract(appId: string, sessionId: string, userInput: UserInput): Promise<ExtractResponse>;
    /** Take a turn and returns chosen action */
    SessionScore(appId: string, sessionId: string, scorerInput: ScoreInput): Promise<ScoreResponse>;
    /** End a session. */
    EndSession(appId: string, sessionId: string, query: string): Promise<string>;
    /** Retrieves definitions of ALL open sessions
     * To retrieve just the IDs, see the GetSessionIds method */
    GetSessions(appId: string, query: string): Promise<SessionList>;
    /** Retrieves a list of session IDs
     * To retrieve the definitions, see the GetSessions method */
    GetSessionIds(appId: string, query: string): Promise<SessionIdList>;
    /** Creates a new teaching session and a corresponding trainDialog */
    StartTeach(appId: string): Promise<TeachResponse>;
    /** Retrieves information about the specified teach */
    GetTeach(appId: string, teachId: string): Promise<Teach>;
    /** Runs entity extraction (prediction).
     * If a more recent version of the package is available on
     * the server, the session will first migrate to that newer version.  This
     * doesn't affect the trainDialog maintained.
     */
    TeachExtract(appId: string, teachId: string, userInput: UserInput): Promise<ExtractResponse>;
    /** Uploads a labeled entity extraction instance
     * ie "commits" an entity extraction label, appending it to the teach session's
     * trainDialog, and advancing the dialog. This may yield produce a new package.
     */
    TeachExtractFeedback(appId: string, teachId: string, extractorStep: TrainExtractorStep): Promise<TeachResponse>;
    /** Takes a turn and return distribution over actions.
     * If a more recent version of the package is
     * available on the server, the session will first migrate to that newer version.
     * This doesn't affect the trainDialog maintained by the teaching session.
     */
    TeachScore(appId: string, teachId: string, scorerInput: ScoreInput): Promise<ScoreResponse>;
    /** Uploads a labeled scorer step instance
     * – ie "commits" a scorer label, appending it to the teach session's
     * trainDialog, and advancing the dialog. This may yield produce a new package.
     */
    TeachScoreFeedback(appId: string, teachId: string, scorerResponse: TrainScorerStep): Promise<TeachResponse>;
    /** Ends a teach.
     * For Teach sessions, does NOT delete the associated trainDialog.
     * To delete the associated trainDialog, call DELETE on the trainDialog.
     */
    EndTeach(appId: string, teachId: string, query: string): Promise<TrainResponse>;
    /** Retrieves definitions of ALL teaching sessions
     * To retrieve just the IDs, see the GetTeachIds method */
    GetTeaches(appId: string, query: string): Promise<TeachList>;
    /** Retrieves a list of teach session IDs
     * To retrieve the definitions, see the GetTeaches method */
    GetTeachIds(appId: string, query: string): Promise<TeachIdList>;
}
