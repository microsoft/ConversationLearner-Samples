{
    "trainDialogs": [
        {
            "trainDialogId": "89ef18b6-c62d-4d32-a44a-a72798d449b7",
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
                            "labelAction": "d5dd27be-628c-4b56-bd6f-ae0c9b1775cf",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.009262561798095703,
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
                                "text": "today",
                                "labelEntities": [
                                    {
                                        "entityId": "12f4919e-c668-4083-9b77-4d8e5c168442",
                                        "startCharIndex": 0,
                                        "endCharIndex": 4,
                                        "entityText": "today",
                                        "resolution": {
                                            "values": [
                                                {
                                                    "timex": "2018-12-18",
                                                    "type": "date",
                                                    "value": "2018-12-18"
                                                }
                                            ]
                                        },
                                        "builtinType": "builtin.datetimeV2.date"
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
                                        "entityId": "12f4919e-c668-4083-9b77-4d8e5c168442",
                                        "values": [
                                            {
                                                "userText": "today",
                                                "displayText": "2018-12-18",
                                                "builtinType": "builtin.datetimeV2.date",
                                                "resolution": {
                                                    "values": [
                                                        {
                                                            "timex": "2018-12-18",
                                                            "type": "date",
                                                            "value": "2018-12-18"
                                                        }
                                                    ]
                                                }
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "af44fffa-ffbb-4d8a-a445-0775af564377",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.010872125625610351,
                                    "contextDialogBlisTime": 0
                                }
                            }
                        }
                    ]
                }
            ],
            "initialFilledEntities": [],
            "createdDateTime": "2018-12-18T23:24:26.6364756+00:00",
            "lastModifiedDateTime": "2018-12-18T23:25:02+00:00"
        }
    ],
    "actions": [
        {
            "actionId": "d5dd27be-628c-4b56-bd6f-ae0c9b1775cf",
            "createdDateTime": "2018-12-18T23:22:42.2895938+00:00",
            "actionType": "TEXT",
            "payload": "{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"What's the date?\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [],
            "negativeEntities": [
                "12f4919e-c668-4083-9b77-4d8e5c168442"
            ]
        },
        {
            "actionId": "af44fffa-ffbb-4d8a-a445-0775af564377",
            "createdDateTime": "2018-12-18T23:23:58.903197+00:00",
            "actionType": "TEXT",
            "payload": "{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"line\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"The date is \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"12f4919e-c668-4083-9b77-4d8e5c168442\",\"name\":\"builtin-datetimev2\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$builtin-datetimev2\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [
                "12f4919e-c668-4083-9b77-4d8e5c168442"
            ],
            "requiredEntities": [
                "12f4919e-c668-4083-9b77-4d8e5c168442"
            ],
            "negativeEntities": []
        }
    ],
    "entities": [
        {
            "entityId": "12f4919e-c668-4083-9b77-4d8e5c168442",
            "createdDateTime": "2018-12-18T23:23:29.8581431+00:00",
            "entityName": "builtin-datetimev2",
            "entityType": "datetimeV2",
            "isMultivalue": true,
            "isNegatible": false
        }
    ],
    "packageId": "b7f6e4b5-5641-47bd-9e72-bce1a602e660"
}