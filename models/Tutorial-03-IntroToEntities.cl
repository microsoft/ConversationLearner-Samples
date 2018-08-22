{
    "trainDialogs": [
        {
            "trainDialogId": "e6a18329-cf2d-44d1-9fe8-e7043a4d6f33",
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
                            "labelAction": "6e547d1a-ab2c-4ffe-a5ce-b8548287ae4f",
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
                                "text": "seattle",
                                "labelEntities": [
                                    {
                                        "entityId": "09fb22bd-2da4-4b73-9771-3e776c6410e6",
                                        "startCharIndex": 0,
                                        "endCharIndex": 6,
                                        "entityText": "seattle"
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
                                        "entityId": "09fb22bd-2da4-4b73-9771-3e776c6410e6",
                                        "values": [
                                            {
                                                "userText": "seattle",
                                                "displayText": "seattle",
                                                "builtinType": "LUIS",
                                                "resolution": {}
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "94ad7952-69cd-4cdb-a3eb-518b10d5f61e",
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
                                "text": "repeat that",
                                "labelEntities": []
                            }
                        ]
                    },
                    "scorerSteps": [
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "09fb22bd-2da4-4b73-9771-3e776c6410e6",
                                        "values": [
                                            {
                                                "userText": "seattle",
                                                "displayText": "seattle",
                                                "builtinType": "LUIS",
                                                "resolution": {}
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "94ad7952-69cd-4cdb-a3eb-518b10d5f61e",
                            "metrics": {
                                "predictMetrics": null
                            }
                        }
                    ]
                }
            ]
        }
    ],
    "actions": [
        {
            "actionId": "6e547d1a-ab2c-4ffe-a5ce-b8548287ae4f",
            "actionType": "TEXT",
            "payload": "{\"text\":\"I don't know what city you want.\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"I don't know what city you want.\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntities": [],
            "negativeEntities": [
                "09fb22bd-2da4-4b73-9771-3e776c6410e6"
            ]
        },
        {
            "actionId": "94ad7952-69cd-4cdb-a3eb-518b10d5f61e",
            "actionType": "TEXT",
            "payload": "{\"text\":\"The weather in $city is probably sunny.\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"The weather in \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"09fb22bd-2da4-4b73-9771-3e776c6410e6\",\"name\":\"city\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$city\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\" is probably sunny.\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntities": [
                "09fb22bd-2da4-4b73-9771-3e776c6410e6"
            ],
            "negativeEntities": []
        }
    ],
    "entities": [
        {
            "entityId": "09fb22bd-2da4-4b73-9771-3e776c6410e6",
            "entityName": "city",
            "entityType": "LUIS",
            "isMultivalue": false,
            "isNegatible": false,
            "isReversable": false
        }
    ],
    "packageId": "7b6e1f31-ea41-4644-b95e-26ebb1399e45"
}