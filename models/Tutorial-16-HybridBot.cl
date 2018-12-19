{
    "trainDialogs": [
        {
            "trainDialogId": "73dac8d7-7c8e-4e65-873b-88ee243395d3",
            "rounds": [
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "hello",
                                "labelEntities": []
                            }
                        ]
                    },
                    "scorerSteps": [
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "4cff8507-597f-4a96-9f02-c587cee42110",
                                        "values": [
                                            {
                                                "userText": "true",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "93afdae6-0372-400b-a90d-5a21b16021cb",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.004870891571044922,
                                    "contextDialogBlisTime": 0
                                }
                            }
                        }
                    ]
                },
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "fishsticks",
                                "labelEntities": [
                                    {
                                        "entityId": "cd97fdd5-df0e-4e66-b6f7-118b67d4fbde",
                                        "startCharIndex": 0,
                                        "endCharIndex": 9,
                                        "entityText": "fishsticks"
                                    }
                                ]
                            }
                        ]
                    },
                    "scorerSteps": [
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "4cff8507-597f-4a96-9f02-c587cee42110",
                                        "values": [
                                            {
                                                "userText": "true",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    },
                                    {
                                        "entityId": "cd97fdd5-df0e-4e66-b6f7-118b67d4fbde",
                                        "values": [
                                            {
                                                "userText": "fishsticks",
                                                "displayText": "fishsticks",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "d356c05c-08aa-4e0f-9298-30454c6bd879",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.012055397033691406,
                                    "contextDialogBlisTime": 0
                                }
                            }
                        }
                    ]
                }
            ],
            "initialFilledEntities": [],
            "createdDateTime": "2018-12-18T23:52:21.2558207+00:00",
            "lastModifiedDateTime": "2018-12-18T23:52:21+00:00"
        },
        {
            "trainDialogId": "04af011f-d095-441e-a062-701050ce2dad",
            "rounds": [
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "hello",
                                "labelEntities": []
                            }
                        ]
                    },
                    "scorerSteps": [
                        {
                            "input": {
                                "filledEntities": [],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "96719fa0-edb6-4466-b902-da6d678d9be9",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.005136013031005859,
                                    "contextDialogBlisTime": 0
                                }
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "595e7d06-e408-4f60-b54f-41f0302bb616",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.010474443435668945,
                                    "contextDialogBlisTime": 0
                                }
                            }
                        }
                    ]
                }
            ],
            "initialFilledEntities": [],
            "createdDateTime": "2018-12-18T23:52:21.2558207+00:00",
            "lastModifiedDateTime": "2018-12-18T23:52:21+00:00"
        }
    ],
    "actions": [
        {
            "actionId": "93afdae6-0372-400b-a90d-5a21b16021cb",
            "createdDateTime": "2018-12-18T23:52:21.2558207+00:00",
            "actionType": "TEXT",
            "payload": "{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"line\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"What would you like to buy?\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [
                "4cff8507-597f-4a96-9f02-c587cee42110"
            ],
            "negativeEntities": [
                "cd97fdd5-df0e-4e66-b6f7-118b67d4fbde"
            ],
            "suggestedEntity": "cd97fdd5-df0e-4e66-b6f7-118b67d4fbde"
        },
        {
            "actionId": "96719fa0-edb6-4466-b902-da6d678d9be9",
            "createdDateTime": "2018-12-18T23:52:21.2558207+00:00",
            "actionType": "TEXT",
            "payload": "{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"line\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"I'm sorry we're closed\",\"marks\":[]}]}]}]}}}",
            "isTerminal": false,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [],
            "negativeEntities": []
        },
        {
            "actionId": "595e7d06-e408-4f60-b54f-41f0302bb616",
            "createdDateTime": "2018-12-18T23:52:21.2558207+00:00",
            "actionType": "END_SESSION",
            "payload": "{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"line\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"task failed\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [],
            "negativeEntities": [
                "cd97fdd5-df0e-4e66-b6f7-118b67d4fbde"
            ]
        },
        {
            "actionId": "d356c05c-08aa-4e0f-9298-30454c6bd879",
            "createdDateTime": "2018-12-18T23:52:21.2558207+00:00",
            "actionType": "END_SESSION",
            "payload": "{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"line\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"task success\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [
                "cd97fdd5-df0e-4e66-b6f7-118b67d4fbde"
            ],
            "negativeEntities": []
        }
    ],
    "entities": [
        {
            "entityId": "cd97fdd5-df0e-4e66-b6f7-118b67d4fbde",
            "createdDateTime": "2018-12-18T23:52:21.2558207+00:00",
            "entityName": "purchaseItem",
            "entityType": "LUIS",
            "isMultivalue": false,
            "isNegatible": false,
            "resolverType": "none"
        },
        {
            "entityId": "4cff8507-597f-4a96-9f02-c587cee42110",
            "createdDateTime": "2018-12-18T23:52:21.2558207+00:00",
            "entityName": "isOpen",
            "entityType": "LOCAL",
            "isMultivalue": false,
            "isNegatible": false
        }
    ],
    "packageId": "8a586592-56c6-42c4-8655-30b252d97725"
}