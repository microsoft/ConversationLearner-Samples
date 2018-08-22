{
    "trainDialogs": [
        {
            "trainDialogId": "9e2774c4-2f20-409c-9642-8c45b4560b0b",
            "rounds": [
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "what's the weather",
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
                            "labelAction": "9bf39aa1-4dab-4aee-b451-4f3cf7f0076c",
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
                                        "entityId": "b1d221c4-79c8-43cc-b02f-8169a259e0c7",
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
                                        "entityId": "b1d221c4-79c8-43cc-b02f-8169a259e0c7",
                                        "values": [
                                            {
                                                "userText": "seattle",
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
                            "labelAction": "b68c767d-63aa-4424-8847-2074a8e49cf0",
                            "metrics": {
                                "predictMetrics": null
                            }
                        }
                    ]
                }
            ]
        },
        {
            "trainDialogId": "ace77edd-4afe-4b6e-afbc-37076dd443b7",
            "rounds": [
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "what's the weather in seattle",
                                "labelEntities": [
                                    {
                                        "entityId": "b1d221c4-79c8-43cc-b02f-8169a259e0c7",
                                        "startCharIndex": 22,
                                        "endCharIndex": 28,
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
                                        "entityId": "b1d221c4-79c8-43cc-b02f-8169a259e0c7",
                                        "values": [
                                            {
                                                "userText": "seattle",
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
                            "labelAction": "b68c767d-63aa-4424-8847-2074a8e49cf0",
                            "metrics": {
                                "predictMetrics": null
                            }
                        }
                    ]
                }
            ]
        },
        {
            "trainDialogId": "f0d8895c-d559-4fe1-8a69-4d06e7650f12",
            "rounds": [
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "forecast for austin",
                                "labelEntities": [
                                    {
                                        "entityId": "b1d221c4-79c8-43cc-b02f-8169a259e0c7",
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
                                        "entityId": "b1d221c4-79c8-43cc-b02f-8169a259e0c7",
                                        "values": [
                                            {
                                                "userText": "austin",
                                                "displayText": "austin",
                                                "builtinType": "LUIS",
                                                "resolution": {}
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "b68c767d-63aa-4424-8847-2074a8e49cf0",
                            "metrics": {
                                "predictMetrics": null
                            }
                        }
                    ]
                }
            ]
        },
        {
            "trainDialogId": "3e722ead-5308-4004-8921-e07461b8e4e6",
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
                            "labelAction": "1bcc14f1-8b64-41a1-98be-56fc62e959e9",
                            "metrics": {
                                "predictMetrics": null
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "9bf39aa1-4dab-4aee-b451-4f3cf7f0076c",
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
                                "text": "boston",
                                "labelEntities": [
                                    {
                                        "entityId": "b1d221c4-79c8-43cc-b02f-8169a259e0c7",
                                        "startCharIndex": 0,
                                        "endCharIndex": 5,
                                        "entityText": "boston"
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
                                        "entityId": "b1d221c4-79c8-43cc-b02f-8169a259e0c7",
                                        "values": [
                                            {
                                                "userText": "boston",
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
                            "labelAction": "b68c767d-63aa-4424-8847-2074a8e49cf0",
                            "metrics": {
                                "predictMetrics": null
                            }
                        }
                    ]
                }
            ]
        },
        {
            "trainDialogId": "18771a96-6cf6-41b2-8bc2-f34d43e7bd37",
            "rounds": [
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "weather for seattle",
                                "labelEntities": [
                                    {
                                        "entityId": "b1d221c4-79c8-43cc-b02f-8169a259e0c7",
                                        "startCharIndex": 12,
                                        "endCharIndex": 18,
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
                                        "entityId": "b1d221c4-79c8-43cc-b02f-8169a259e0c7",
                                        "values": [
                                            {
                                                "userText": "seattle",
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
                            "labelAction": "b68c767d-63aa-4424-8847-2074a8e49cf0",
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
            "actionId": "9bf39aa1-4dab-4aee-b451-4f3cf7f0076c",
            "actionType": "TEXT",
            "payload": "{\"text\":\"Which city?\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Which city?\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntities": [],
            "negativeEntities": [
                "b1d221c4-79c8-43cc-b02f-8169a259e0c7"
            ],
            "suggestedEntity": "b1d221c4-79c8-43cc-b02f-8169a259e0c7"
        },
        {
            "actionId": "b68c767d-63aa-4424-8847-2074a8e49cf0",
            "actionType": "TEXT",
            "payload": "{\"text\":\"The weather in $city is probably sunny.\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"The weather in \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"b1d221c4-79c8-43cc-b02f-8169a259e0c7\",\"name\":\"city\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$city\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\" is probably sunny.\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntities": [
                "b1d221c4-79c8-43cc-b02f-8169a259e0c7"
            ],
            "negativeEntities": []
        },
        {
            "actionId": "1bcc14f1-8b64-41a1-98be-56fc62e959e9",
            "actionType": "TEXT",
            "payload": "{\"text\":\"I'm the weather bot.  I can help with forecasts.\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"I'm the weather bot.  I can help with forecasts.\",\"marks\":[]}]}]}]}}}",
            "isTerminal": false,
            "requiredEntities": [],
            "negativeEntities": []
        }
    ],
    "entities": [
        {
            "entityId": "b1d221c4-79c8-43cc-b02f-8169a259e0c7",
            "entityName": "city",
            "entityType": "LUIS",
            "isMultivalue": false,
            "isNegatible": false,
            "isReversable": false
        }
    ],
    "packageId": "279c92ff-99c4-4544-b0e1-63febdc477ac"
}