{
    "trainDialogs": [
        {
            "trainDialogId": "fd7f72e1-fab2-46bf-8a19-0b948e4b28ff",
            "rounds": [
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "book me a flight",
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
                            "labelAction": "0362dea2-3aca-40c2-bbfc-f2ecaf3e1137",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.011851072311401367,
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
                                "text": "leaving tomorrow and returning Sunday next week",
                                "labelEntities": [
                                    {
                                        "entityId": "09a7bae6-0c6a-4ed5-bef9-0d36fee6f778",
                                        "startCharIndex": 8,
                                        "endCharIndex": 15,
                                        "entityText": "tomorrow",
                                        "resolution": {
                                            "values": [
                                                {
                                                    "timex": "2018-12-19",
                                                    "type": "date",
                                                    "value": "2018-12-19"
                                                }
                                            ]
                                        },
                                        "builtinType": "builtin.datetimeV2.date"
                                    },
                                    {
                                        "entityId": "09a7bae6-0c6a-4ed5-bef9-0d36fee6f778",
                                        "startCharIndex": 31,
                                        "endCharIndex": 46,
                                        "entityText": "Sunday next week",
                                        "resolution": {
                                            "values": [
                                                {
                                                    "timex": "2018-12-30",
                                                    "type": "date",
                                                    "value": "2018-12-30"
                                                }
                                            ]
                                        },
                                        "builtinType": "builtin.datetimeV2.date"
                                    },
                                    {
                                        "entityId": "1a3f28aa-e53e-4715-b231-31be88b881a4",
                                        "startCharIndex": 8,
                                        "endCharIndex": 15,
                                        "entityText": "tomorrow",
                                        "resolution": {},
                                        "builtinType": "LUIS"
                                    },
                                    {
                                        "entityId": "f369f44c-132c-4ce3-9b45-2342408ac21b",
                                        "startCharIndex": 31,
                                        "endCharIndex": 46,
                                        "entityText": "Sunday next week",
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
                                        "entityId": "1a3f28aa-e53e-4715-b231-31be88b881a4",
                                        "values": [
                                            {
                                                "userText": "tomorrow",
                                                "displayText": "2018-12-19",
                                                "builtinType": "builtin.datetimeV2.date",
                                                "resolution": {
                                                    "values": [
                                                        {
                                                            "timex": "2018-12-19",
                                                            "type": "date",
                                                            "value": "2018-12-19"
                                                        }
                                                    ]
                                                }
                                            }
                                        ]
                                    },
                                    {
                                        "entityId": "f369f44c-132c-4ce3-9b45-2342408ac21b",
                                        "values": [
                                            {
                                                "userText": "Sunday next week",
                                                "displayText": "2018-12-30",
                                                "builtinType": "builtin.datetimeV2.date",
                                                "resolution": {
                                                    "values": [
                                                        {
                                                            "timex": "2018-12-30",
                                                            "type": "date",
                                                            "value": "2018-12-30"
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
                            "labelAction": "f809faa8-0a0a-4438-b401-768fae336c3f",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.012052774429321289,
                                    "contextDialogBlisTime": 0
                                }
                            }
                        }
                    ]
                }
            ],
            "initialFilledEntities": [],
            "createdDateTime": "2018-12-18T23:28:10.5483846+00:00",
            "lastModifiedDateTime": "2018-12-18T23:29:29+00:00"
        }
    ],
    "actions": [
        {
            "actionId": "f809faa8-0a0a-4438-b401-768fae336c3f",
            "createdDateTime": "2018-12-18T23:27:36.5098021+00:00",
            "actionType": "TEXT",
            "payload": "{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"line\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"You are leaving on \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"1a3f28aa-e53e-4715-b231-31be88b881a4\",\"name\":\"departure\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$departure\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\" and returning on \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"f369f44c-132c-4ce3-9b45-2342408ac21b\",\"name\":\"return\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$return\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [
                "1a3f28aa-e53e-4715-b231-31be88b881a4",
                "f369f44c-132c-4ce3-9b45-2342408ac21b"
            ],
            "requiredEntities": [
                "1a3f28aa-e53e-4715-b231-31be88b881a4",
                "f369f44c-132c-4ce3-9b45-2342408ac21b"
            ],
            "negativeEntities": []
        },
        {
            "actionId": "0362dea2-3aca-40c2-bbfc-f2ecaf3e1137",
            "createdDateTime": "2018-12-18T23:27:52.4916123+00:00",
            "actionType": "TEXT",
            "payload": "{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"line\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"When are you planning to travel?\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [],
            "negativeEntities": [
                "1a3f28aa-e53e-4715-b231-31be88b881a4",
                "f369f44c-132c-4ce3-9b45-2342408ac21b"
            ]
        }
    ],
    "entities": [
        {
            "doNotMemorize": true,
            "entityId": "09a7bae6-0c6a-4ed5-bef9-0d36fee6f778",
            "createdDateTime": "2018-12-18T23:26:55.0081081+00:00",
            "entityName": "builtin-datetimev2",
            "entityType": "datetimeV2",
            "isMultivalue": false,
            "isNegatible": false
        },
        {
            "entityId": "1a3f28aa-e53e-4715-b231-31be88b881a4",
            "createdDateTime": "2018-12-18T23:26:54.961257+00:00",
            "entityName": "departure",
            "entityType": "LUIS",
            "isMultivalue": false,
            "isNegatible": false,
            "resolverType": "datetimeV2"
        },
        {
            "entityId": "f369f44c-132c-4ce3-9b45-2342408ac21b",
            "createdDateTime": "2018-12-18T23:27:01.2676061+00:00",
            "entityName": "return",
            "entityType": "LUIS",
            "isMultivalue": false,
            "isNegatible": false,
            "resolverType": "datetimeV2"
        }
    ],
    "packageId": "b6fa7159-d0e2-4bf6-b35a-44c987262632"
}