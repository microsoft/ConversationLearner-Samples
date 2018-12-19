{
    "trainDialogs": [
        {
            "trainDialogId": "e88ea1ed-edbf-41c1-9f2c-7593cb798a3e",
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
                            "labelAction": "bed310c1-ac0b-47d9-9617-3530b9d97406",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.011475563049316406,
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
                                "text": "My name is Frank.",
                                "labelEntities": [
                                    {
                                        "entityId": "4a87bfda-b8ac-4fcc-b96a-6f28c020b7d6",
                                        "startCharIndex": 11,
                                        "endCharIndex": 15,
                                        "entityText": "Frank"
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
                                        "entityId": "4a87bfda-b8ac-4fcc-b96a-6f28c020b7d6",
                                        "values": [
                                            {
                                                "userText": "Frank",
                                                "displayText": "Frank",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "cea0a327-ea7a-4dbb-b2a7-095adec7ea8e",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.01011347770690918,
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
                                "text": "My name is not Frank",
                                "labelEntities": [
                                    {
                                        "entityId": "360fa26f-5302-4efa-876f-b52c679d2ba3",
                                        "startCharIndex": 15,
                                        "endCharIndex": 19,
                                        "entityText": "Frank"
                                    }
                                ]
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
                            "labelAction": "bed310c1-ac0b-47d9-9617-3530b9d97406",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.0070073604583740234,
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
                                "text": "My name is Susan.",
                                "labelEntities": [
                                    {
                                        "entityId": "4a87bfda-b8ac-4fcc-b96a-6f28c020b7d6",
                                        "startCharIndex": 11,
                                        "endCharIndex": 15,
                                        "entityText": "Susan"
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
                                        "entityId": "4a87bfda-b8ac-4fcc-b96a-6f28c020b7d6",
                                        "values": [
                                            {
                                                "userText": "Susan",
                                                "displayText": "Susan",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "cea0a327-ea7a-4dbb-b2a7-095adec7ea8e",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.012382030487060547,
                                    "contextDialogBlisTime": 0
                                }
                            }
                        }
                    ]
                }
            ],
            "initialFilledEntities": [],
            "createdDateTime": "2018-12-18T23:09:30.9497016+00:00",
            "lastModifiedDateTime": "2018-12-18T23:10:23+00:00"
        }
    ],
    "actions": [
        {
            "actionId": "bed310c1-ac0b-47d9-9617-3530b9d97406",
            "createdDateTime": "2018-12-18T23:08:19.4878143+00:00",
            "actionType": "TEXT",
            "payload": "{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"I don't know your name.\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [],
            "negativeEntities": [
                "4a87bfda-b8ac-4fcc-b96a-6f28c020b7d6"
            ]
        },
        {
            "actionId": "cea0a327-ea7a-4dbb-b2a7-095adec7ea8e",
            "createdDateTime": "2018-12-18T23:08:19.4878143+00:00",
            "actionType": "TEXT",
            "payload": "{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"I know your name and it's \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"4a87bfda-b8ac-4fcc-b96a-6f28c020b7d6\",\"name\":\"name\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$name\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\".\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [
                "4a87bfda-b8ac-4fcc-b96a-6f28c020b7d6"
            ],
            "requiredEntities": [
                "4a87bfda-b8ac-4fcc-b96a-6f28c020b7d6"
            ],
            "negativeEntities": []
        }
    ],
    "entities": [
        {
            "entityId": "4a87bfda-b8ac-4fcc-b96a-6f28c020b7d6",
            "negativeId": "360fa26f-5302-4efa-876f-b52c679d2ba3",
            "createdDateTime": "2018-12-18T23:08:19.4878143+00:00",
            "entityName": "name",
            "entityType": "LUIS",
            "isMultivalue": false,
            "isNegatible": true,
            "resolverType": "none"
        },
        {
            "entityId": "360fa26f-5302-4efa-876f-b52c679d2ba3",
            "positiveId": "4a87bfda-b8ac-4fcc-b96a-6f28c020b7d6",
            "createdDateTime": "2018-12-18T23:08:19.4878143+00:00",
            "entityName": "~name",
            "entityType": "LUIS",
            "isMultivalue": false,
            "isNegatible": true,
            "resolverType": "none"
        }
    ],
    "packageId": "2ba930b1-99c5-4aea-a9da-890a1e7a69c4"
}