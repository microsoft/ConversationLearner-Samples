{
    "trainDialogs": [
        {
            "trainDialogId": "4a5f7ad4-7635-4f9b-8f4c-0848005b5fb1",
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
                            "labelAction": "fa170011-f560-488a-9561-87a996506833",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.011946916580200195,
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
                                "text": "yes",
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
                            "labelAction": "bca2a46d-0beb-48b8-aad7-8c12208ec237",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.011088132858276367,
                                    "contextDialogBlisTime": 0
                                }
                            }
                        }
                    ]
                }
            ],
            "initialFilledEntities": [],
            "createdDateTime": "2018-12-18T22:51:43.3089786+00:00",
            "lastModifiedDateTime": "2018-12-18T22:52:36+00:00"
        },
        {
            "trainDialogId": "ccf5df2a-e7f4-4851-96e6-615d3dd71155",
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
                            "labelAction": "fa170011-f560-488a-9561-87a996506833",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.011946916580200195,
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
                                "text": "no",
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
                            "labelAction": "daf3b517-ae0a-48dc-8cf8-cc2058ff4925",
                            "metrics": {
                                "predictMetrics": null
                            }
                        }
                    ]
                }
            ],
            "initialFilledEntities": [],
            "createdDateTime": "2018-12-18T22:53:33.414471+00:00",
            "lastModifiedDateTime": "2018-12-18T22:53:33+00:00"
        }
    ],
    "actions": [
        {
            "actionId": "fa170011-f560-488a-9561-87a996506833",
            "createdDateTime": "2018-12-18T22:51:36.4874837+00:00",
            "actionType": "TEXT",
            "payload": "{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"line\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Hi! Would you like to be inspired today?\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [],
            "negativeEntities": []
        },
        {
            "actionId": "bca2a46d-0beb-48b8-aad7-8c12208ec237",
            "createdDateTime": "2018-12-18T22:52:30.1304222+00:00",
            "actionType": "TEXT",
            "payload": "{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"line\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"You're awesome!\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [],
            "negativeEntities": []
        },
        {
            "actionId": "daf3b517-ae0a-48dc-8cf8-cc2058ff4925",
            "createdDateTime": "2018-12-18T22:53:27.2689264+00:00",
            "actionType": "TEXT",
            "payload": "{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"line\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"No problem! Have a great day!\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [],
            "negativeEntities": []
        }
    ],
    "entities": [],
    "packageId": "97cb956b-5e60-48b8-82ab-59c0f766e375"
}