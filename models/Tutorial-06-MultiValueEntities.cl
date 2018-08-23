{
    "trainDialogs": [
        {
            "trainDialogId": "be0a2d43-e486-46f5-a71f-5127f0f7d0ee",
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
                            "labelAction": "22969618-9f80-4317-b5e3-1764e7c10a7c",
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
                                "text": "mushrooms and cheese",
                                "labelEntities": [
                                    {
                                        "entityId": "2517d420-b5da-4ea1-8954-32fafd4787a4",
                                        "startCharIndex": 0,
                                        "endCharIndex": 8,
                                        "entityText": "mushrooms"
                                    },
                                    {
                                        "entityId": "2517d420-b5da-4ea1-8954-32fafd4787a4",
                                        "startCharIndex": 14,
                                        "endCharIndex": 19,
                                        "entityText": "cheese"
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
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": "LUIS",
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
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
                                "text": "add peppers",
                                "labelEntities": [
                                    {
                                        "entityId": "2517d420-b5da-4ea1-8954-32fafd4787a4",
                                        "startCharIndex": 4,
                                        "endCharIndex": 10,
                                        "entityText": "peppers"
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
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": "LUIS",
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": "LUIS",
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "peppers",
                                                "displayText": "peppers",
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
                                "text": "remove peppers and add sausage",
                                "labelEntities": [
                                    {
                                        "entityId": "c6c8a8d3-3e0f-4184-b422-4a7af671abf1",
                                        "startCharIndex": 7,
                                        "endCharIndex": 13,
                                        "entityText": "peppers"
                                    },
                                    {
                                        "entityId": "2517d420-b5da-4ea1-8954-32fafd4787a4",
                                        "startCharIndex": 23,
                                        "endCharIndex": 29,
                                        "entityText": "sausage"
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
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": "LUIS",
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": "LUIS",
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "sausage",
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
                                "text": "remove mushrooms, remove cheese, and remove sausage",
                                "labelEntities": [
                                    {
                                        "entityId": "c6c8a8d3-3e0f-4184-b422-4a7af671abf1",
                                        "startCharIndex": 7,
                                        "endCharIndex": 15,
                                        "entityText": "mushrooms"
                                    },
                                    {
                                        "entityId": "c6c8a8d3-3e0f-4184-b422-4a7af671abf1",
                                        "startCharIndex": 25,
                                        "endCharIndex": 30,
                                        "entityText": "cheese"
                                    },
                                    {
                                        "entityId": "c6c8a8d3-3e0f-4184-b422-4a7af671abf1",
                                        "startCharIndex": 44,
                                        "endCharIndex": 50,
                                        "entityText": "sausage"
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
                            "labelAction": "22969618-9f80-4317-b5e3-1764e7c10a7c",
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
            "actionId": "22969618-9f80-4317-b5e3-1764e7c10a7c",
            "actionType": "TEXT",
            "payload": "{\"text\":\"What toppings do you want?\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"What toppings do you want?\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntities": [],
            "negativeEntities": [
                "2517d420-b5da-4ea1-8954-32fafd4787a4"
            ]
        },
        {
            "actionId": "361bfe7a-5f25-4da2-ab27-689aa6186cab",
            "actionType": "TEXT",
            "payload": "{\"text\":\"Here are your toppings: $Toppings\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Here are your toppings: \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"2517d420-b5da-4ea1-8954-32fafd4787a4\",\"name\":\"Toppings\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$Toppings\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntities": [
                "2517d420-b5da-4ea1-8954-32fafd4787a4"
            ],
            "negativeEntities": []
        }
    ],
    "entities": [
        {
            "entityId": "2517d420-b5da-4ea1-8954-32fafd4787a4",
            "entityName": "Toppings",
            "entityType": "LUIS",
            "isMultivalue": true,
            "isNegatible": true,
            "isReversable": false,
            "negativeId": "c6c8a8d3-3e0f-4184-b422-4a7af671abf1"
        },
        {
            "entityId": "c6c8a8d3-3e0f-4184-b422-4a7af671abf1",
            "entityName": "~Toppings",
            "entityType": "LUIS",
            "isMultivalue": true,
            "isNegatible": true,
            "isReversable": false,
            "positiveId": "2517d420-b5da-4ea1-8954-32fafd4787a4"
        }
    ],
    "packageId": "e485c8c9-1141-4059-957b-2b211d8aac51"
}