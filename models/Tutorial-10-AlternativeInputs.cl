{
    "trainDialogs": [
        {
            "trainDialogId": "b7cf1979-6ffd-4155-83f4-e972df66c332",
            "rounds": [
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "what can you do",
                                "labelEntities": []
                            },
                            {
                                "text": "what are my choices?",
                                "labelEntities": []
                            },
                            {
                                "text": "tell me my choices",
                                "labelEntities": []
                            },
                            {
                                "text": "help",
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
                            "labelAction": "c82ea618-10cf-4ee6-bf15-b32f7444b137",
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
                                "text": "what's the weather in seattle",
                                "labelEntities": [
                                    {
                                        "entityId": "8eab5c57-c87d-4c70-a1b9-37fb48bd16fd",
                                        "startCharIndex": 22,
                                        "endCharIndex": 28,
                                        "entityText": "seattle"
                                    }
                                ]
                            },
                            {
                                "text": "forecast for seattle",
                                "labelEntities": [
                                    {
                                        "entityId": "8eab5c57-c87d-4c70-a1b9-37fb48bd16fd",
                                        "startCharIndex": 13,
                                        "endCharIndex": 19,
                                        "entityText": "seattle"
                                    }
                                ]
                            },
                            {
                                "text": "will it rain today in denver",
                                "labelEntities": [
                                    {
                                        "entityId": "8eab5c57-c87d-4c70-a1b9-37fb48bd16fd",
                                        "startCharIndex": 22,
                                        "endCharIndex": 27,
                                        "entityText": "denver"
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
                                        "entityId": "8eab5c57-c87d-4c70-a1b9-37fb48bd16fd",
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
                            "labelAction": "794c4c26-59d0-4f57-8277-bfc0876fe419",
                            "metrics": {
                                "predictMetrics": null
                            }
                        }
                    ]
                }
            ],
            "initialFilledEntities": [],
            "createdDateTime": "2018-12-18T23:30:25.3617285+00:00",
            "lastModifiedDateTime": "2018-12-18T23:30:25+00:00"
        },
        {
            "trainDialogId": "c9873e8c-1f5b-4d05-bce0-a89d53814715",
            "rounds": [
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "what's the weather",
                                "labelEntities": []
                            },
                            {
                                "text": "weather forecast",
                                "labelEntities": []
                            },
                            {
                                "text": "will it rain",
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
                            "labelAction": "887f0ee2-6a3c-429e-a326-806eb8d2d3fc",
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
                                "text": "denver",
                                "labelEntities": [
                                    {
                                        "entityId": "8eab5c57-c87d-4c70-a1b9-37fb48bd16fd",
                                        "startCharIndex": 0,
                                        "endCharIndex": 5,
                                        "entityText": "denver"
                                    }
                                ]
                            },
                            {
                                "text": "for denver",
                                "labelEntities": [
                                    {
                                        "entityId": "8eab5c57-c87d-4c70-a1b9-37fb48bd16fd",
                                        "startCharIndex": 4,
                                        "endCharIndex": 9,
                                        "entityText": "denver"
                                    }
                                ]
                            },
                            {
                                "text": "forecast for austin",
                                "labelEntities": [
                                    {
                                        "entityId": "8eab5c57-c87d-4c70-a1b9-37fb48bd16fd",
                                        "startCharIndex": 13,
                                        "endCharIndex": 18,
                                        "entityText": "austin"
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
                                        "entityId": "8eab5c57-c87d-4c70-a1b9-37fb48bd16fd",
                                        "values": [
                                            {
                                                "userText": "denver",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "794c4c26-59d0-4f57-8277-bfc0876fe419",
                            "metrics": {
                                "predictMetrics": null
                            }
                        }
                    ]
                }
            ],
            "initialFilledEntities": [],
            "createdDateTime": "2018-12-18T23:30:25.3617285+00:00",
            "lastModifiedDateTime": "2018-12-18T23:30:25+00:00"
        }
    ],
    "actions": [
        {
            "actionId": "887f0ee2-6a3c-429e-a326-806eb8d2d3fc",
            "createdDateTime": "2018-12-18T23:30:25.3617285+00:00",
            "actionType": "TEXT",
            "payload": "{\"text\":\"Which city?\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Which city?\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [],
            "negativeEntities": [
                "8eab5c57-c87d-4c70-a1b9-37fb48bd16fd"
            ],
            "suggestedEntity": "8eab5c57-c87d-4c70-a1b9-37fb48bd16fd"
        },
        {
            "actionId": "794c4c26-59d0-4f57-8277-bfc0876fe419",
            "createdDateTime": "2018-12-18T23:30:25.3617285+00:00",
            "actionType": "TEXT",
            "payload": "{\"text\":\"The weather in $city is probably sunny.\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"The weather in \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"8eab5c57-c87d-4c70-a1b9-37fb48bd16fd\",\"name\":\"city\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$city\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\" is probably sunny.\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [
                "8eab5c57-c87d-4c70-a1b9-37fb48bd16fd"
            ],
            "negativeEntities": []
        },
        {
            "actionId": "c82ea618-10cf-4ee6-bf15-b32f7444b137",
            "createdDateTime": "2018-12-18T23:30:25.3617285+00:00",
            "actionType": "TEXT",
            "payload": "{\"text\":\"Try asking for the weather.\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Try asking for the weather.\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [],
            "negativeEntities": [
                "8eab5c57-c87d-4c70-a1b9-37fb48bd16fd"
            ]
        }
    ],
    "entities": [
        {
            "entityId": "8eab5c57-c87d-4c70-a1b9-37fb48bd16fd",
            "createdDateTime": "2018-12-18T23:30:25.3617285+00:00",
            "entityName": "city",
            "entityType": "LUIS",
            "isMultivalue": false,
            "isNegatible": false,
            "resolverType": "none"
        }
    ],
    "packageId": "67858e9b-a39e-484e-8413-67af4930580d"
}