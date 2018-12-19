{
    "trainDialogs": [
        {
            "trainDialogId": "34dfe745-c348-4fed-ad90-d1d81246e06b",
            "rounds": [
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "hi",
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
                            "labelAction": "22969618-9f80-4317-b5e3-1764e7c10a7c",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.011019468307495117,
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
                                "text": "Cheese and Mushrooms",
                                "labelEntities": [
                                    {
                                        "entityId": "2517d420-b5da-4ea1-8954-32fafd4787a4",
                                        "startCharIndex": 0,
                                        "endCharIndex": 5,
                                        "entityText": "Cheese",
                                        "resolution": {},
                                        "builtinType": "LUIS"
                                    },
                                    {
                                        "entityId": "2517d420-b5da-4ea1-8954-32fafd4787a4",
                                        "startCharIndex": 11,
                                        "endCharIndex": 19,
                                        "entityText": "Mushrooms",
                                        "resolution": {},
                                        "builtinType": "LUIS"
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
                                        "entityId": "2517d420-b5da-4ea1-8954-32fafd4787a4",
                                        "values": [
                                            {
                                                "userText": "Cheese",
                                                "displayText": "Cheese",
                                                "builtinType": "LUIS",
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "Mushrooms",
                                                "displayText": "Mushrooms",
                                                "builtinType": "LUIS",
                                                "resolution": {}
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "361bfe7a-5f25-4da2-ab27-689aa6186cab",
                            "metrics": {
                                "predictMetrics": null
                            }
                        }
                    ]
                },
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "add pepper",
                                "labelEntities": [
                                    {
                                        "entityId": "2517d420-b5da-4ea1-8954-32fafd4787a4",
                                        "startCharIndex": 4,
                                        "endCharIndex": 9,
                                        "entityText": "pepper",
                                        "resolution": {},
                                        "builtinType": "LUIS"
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
                                        "entityId": "2517d420-b5da-4ea1-8954-32fafd4787a4",
                                        "values": [
                                            {
                                                "userText": "Cheese",
                                                "displayText": "Cheese",
                                                "builtinType": "LUIS",
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "Mushrooms",
                                                "displayText": "Mushrooms",
                                                "builtinType": "LUIS",
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "pepper",
                                                "displayText": "pepper",
                                                "builtinType": "LUIS",
                                                "resolution": {}
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "361bfe7a-5f25-4da2-ab27-689aa6186cab",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.005947113037109375,
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
                                "text": "remove cheese",
                                "labelEntities": [
                                    {
                                        "entityId": "c6c8a8d3-3e0f-4184-b422-4a7af671abf1",
                                        "startCharIndex": 7,
                                        "endCharIndex": 12,
                                        "entityText": "cheese",
                                        "resolution": {},
                                        "builtinType": "LUIS"
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
                                        "entityId": "2517d420-b5da-4ea1-8954-32fafd4787a4",
                                        "values": [
                                            {
                                                "userText": "Mushrooms",
                                                "displayText": "Mushrooms",
                                                "builtinType": "LUIS",
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "pepper",
                                                "displayText": "pepper",
                                                "builtinType": "LUIS",
                                                "resolution": {}
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "361bfe7a-5f25-4da2-ab27-689aa6186cab",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.01032876968383789,
                                    "contextDialogBlisTime": 0
                                }
                            }
                        }
                    ]
                }
            ],
            "initialFilledEntities": [],
            "createdDateTime": "2018-12-18T23:19:32.6843445+00:00",
            "lastModifiedDateTime": "2018-12-18T23:20:02+00:00"
        }
    ],
    "actions": [
        {
            "actionId": "22969618-9f80-4317-b5e3-1764e7c10a7c",
            "createdDateTime": "2018-12-18T23:11:34.1218267+00:00",
            "actionType": "TEXT",
            "payload": "{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"What toppings would you like?\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [],
            "negativeEntities": [
                "2517d420-b5da-4ea1-8954-32fafd4787a4"
            ]
        },
        {
            "actionId": "361bfe7a-5f25-4da2-ab27-689aa6186cab",
            "createdDateTime": "2018-12-18T23:11:34.1218267+00:00",
            "actionType": "TEXT",
            "payload": "{\"text\":\"Here are your toppings: $Toppings\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Here are your toppings: \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"2517d420-b5da-4ea1-8954-32fafd4787a4\",\"name\":\"Toppings\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$Toppings\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [
                "2517d420-b5da-4ea1-8954-32fafd4787a4"
            ],
            "negativeEntities": []
        }
    ],
    "entities": [
        {
            "entityId": "2517d420-b5da-4ea1-8954-32fafd4787a4",
            "negativeId": "c6c8a8d3-3e0f-4184-b422-4a7af671abf1",
            "createdDateTime": "2018-12-18T23:11:34.1218267+00:00",
            "entityName": "Toppings",
            "entityType": "LUIS",
            "isMultivalue": true,
            "isNegatible": true,
            "resolverType": "none"
        },
        {
            "entityId": "c6c8a8d3-3e0f-4184-b422-4a7af671abf1",
            "positiveId": "2517d420-b5da-4ea1-8954-32fafd4787a4",
            "createdDateTime": "2018-12-18T23:11:34.1218267+00:00",
            "entityName": "~Toppings",
            "entityType": "LUIS",
            "isMultivalue": true,
            "isNegatible": true,
            "resolverType": "none"
        }
    ],
    "packageId": "43b3509e-7328-46af-9f6d-d06f862ea11c"
}