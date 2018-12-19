{
    "trainDialogs": [
        {
            "trainDialogId": "3707a65e-cbbc-42cf-ac90-bb6ab06042fd",
            "rounds": [
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "Hi",
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
                            "labelAction": "c31052b8-c296-42fc-bef1-47cdf8ce6a3e",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.0058841705322265625,
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
                                "text": "Margherita",
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
                            "labelAction": "ee5a85db-d44c-4af0-b8ec-276ccbe1e442",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.008722543716430664,
                                    "contextDialogBlisTime": 0
                                }
                            }
                        }
                    ]
                }
            ],
            "initialFilledEntities": [],
            "createdDateTime": "2018-12-18T22:56:15.7075411+00:00",
            "lastModifiedDateTime": "2018-12-18T22:56:51+00:00"
        },
        {
            "trainDialogId": "04e6696b-fe2f-4566-87e8-9e6cb858303d",
            "rounds": [
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "Hello",
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
                            "labelAction": "a19c0dc2-e5ca-4345-aba5-9810e3e223b2",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.011440515518188476,
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
                            "labelAction": "c31052b8-c296-42fc-bef1-47cdf8ce6a3e",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.009414196014404297,
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
                                "text": "Margherita",
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
                            "labelAction": "ee5a85db-d44c-4af0-b8ec-276ccbe1e442",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.00945591926574707,
                                    "contextDialogBlisTime": 0
                                }
                            }
                        }
                    ]
                }
            ],
            "initialFilledEntities": [],
            "createdDateTime": "2018-12-18T22:57:08.8649935+00:00",
            "lastModifiedDateTime": "2018-12-18T22:58:13+00:00"
        }
    ],
    "actions": [
        {
            "actionId": "c31052b8-c296-42fc-bef1-47cdf8ce6a3e",
            "createdDateTime": "2018-12-18T22:56:03.6712617+00:00",
            "actionType": "TEXT",
            "payload": "{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"line\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"What pizza would you like?\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [],
            "negativeEntities": []
        },
        {
            "actionId": "ee5a85db-d44c-4af0-b8ec-276ccbe1e442",
            "createdDateTime": "2018-12-18T22:56:11.8767793+00:00",
            "actionType": "TEXT",
            "payload": "{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"line\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Pizza on the way!\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [],
            "negativeEntities": []
        },
        {
            "actionId": "a19c0dc2-e5ca-4345-aba5-9810e3e223b2",
            "createdDateTime": "2018-12-18T22:57:36.802137+00:00",
            "actionType": "TEXT",
            "payload": "{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"line\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Welcome to pizza bot!\",\"marks\":[]}]}]}]}}}",
            "isTerminal": false,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [],
            "negativeEntities": []
        }
    ],
    "entities": [],
    "packageId": "a917c33d-70d1-4742-bc34-7bc4badba52a"
}