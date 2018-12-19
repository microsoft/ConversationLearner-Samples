{
    "trainDialogs": [
        {
            "trainDialogId": "35cc15a7-8431-496f-9f29-6cebeed4b9bd",
            "rounds": [
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "place an order",
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
                            "labelAction": "0dbb27ad-3d49-4808-9797-5b40971b6496",
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
                                "text": "cheese",
                                "labelEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 0,
                                        "endCharIndex": 5,
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
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "6ca0abf4-89db-454a-9e7a-21b100d0c076",
                            "metrics": {
                                "predictMetrics": null
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "36a2fafa-3ca5-4e3f-a391-fe6479c3cc19",
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
                                "text": "add peppers and mushrooms",
                                "labelEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 4,
                                        "endCharIndex": 10,
                                        "entityText": "peppers"
                                    },
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 16,
                                        "endCharIndex": 24,
                                        "entityText": "mushrooms"
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
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "peppers",
                                                "displayText": "peppers",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "6ca0abf4-89db-454a-9e7a-21b100d0c076",
                            "metrics": {
                                "predictMetrics": null
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "peppers",
                                                "displayText": "peppers",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "36a2fafa-3ca5-4e3f-a391-fe6479c3cc19",
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
                                "text": "remove the peppers and add yam",
                                "labelEntities": [
                                    {
                                        "entityId": "afa189d2-47e3-47bf-971d-6a78abfe2bb0",
                                        "startCharIndex": 11,
                                        "endCharIndex": 17,
                                        "entityText": "peppers"
                                    },
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 27,
                                        "endCharIndex": 29,
                                        "entityText": "yam"
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
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    },
                                    {
                                        "entityId": "b2001cd7-42be-4366-b774-f629441cb81b",
                                        "values": [
                                            {
                                                "userText": "yam",
                                                "displayText": "yam",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "2196c0ab-4b3c-4315-9428-c11a84a1771b",
                            "metrics": {
                                "predictMetrics": null
                            },
                            "logicResult": {
                                "logicValue": "[\"yam\"]",
                                "changedFilledEntities": [
                                    {
                                        "entityId": "b2001cd7-42be-4366-b774-f629441cb81b",
                                        "values": []
                                    }
                                ]
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "36a2fafa-3ca5-4e3f-a391-fe6479c3cc19",
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
                                "text": "no thanks",
                                "labelEntities": []
                            }
                        ]
                    },
                    "scorerSteps": [
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "4df39065-97b0-40cb-8e63-eedaae5e5fb0",
                            "metrics": {
                                "predictMetrics": null
                            },
                            "logicResult": {
                                "logicValue": null,
                                "changedFilledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": []
                                    },
                                    {
                                        "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ]
                            }
                        }
                    ]
                },
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "order more pizza",
                                "labelEntities": []
                            }
                        ]
                    },
                    "scorerSteps": [
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "7f5fd019-78eb-487b-986b-5ebd44d41ffd",
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
                                "text": "yes",
                                "labelEntities": []
                            }
                        ]
                    },
                    "scorerSteps": [
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "79a5acc2-c223-4b4a-9c3d-d7d68825265b",
                            "metrics": {
                                "predictMetrics": null
                            },
                            "logicResult": {
                                "logicValue": null,
                                "changedFilledEntities": [
                                    {
                                        "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
                                        "values": []
                                    },
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ]
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "6ca0abf4-89db-454a-9e7a-21b100d0c076",
                            "metrics": {
                                "predictMetrics": null
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "36a2fafa-3ca5-4e3f-a391-fe6479c3cc19",
                            "metrics": {
                                "predictMetrics": null
                            }
                        }
                    ]
                }
            ],
            "initialFilledEntities": [],
            "createdDateTime": "2018-12-15T01:10:10.2996231+00:00",
            "lastModifiedDateTime": "2018-12-15T01:28:28+00:00"
        },
        {
            "trainDialogId": "bbc4e56b-48fb-4a2e-8af7-22a04dbeef7b",
            "rounds": [
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "new order",
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
                            "labelAction": "0dbb27ad-3d49-4808-9797-5b40971b6496",
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
                                "text": "i'd like sausage, cheese, and peppers",
                                "labelEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 9,
                                        "endCharIndex": 15,
                                        "entityText": "sausage"
                                    },
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 18,
                                        "endCharIndex": 23,
                                        "entityText": "cheese"
                                    },
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 30,
                                        "endCharIndex": 36,
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
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "peppers",
                                                "displayText": "peppers",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "6ca0abf4-89db-454a-9e7a-21b100d0c076",
                            "metrics": {
                                "predictMetrics": null
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "peppers",
                                                "displayText": "peppers",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "36a2fafa-3ca5-4e3f-a391-fe6479c3cc19",
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
                                "text": "substitute peppers with mushrooms",
                                "labelEntities": [
                                    {
                                        "entityId": "afa189d2-47e3-47bf-971d-6a78abfe2bb0",
                                        "startCharIndex": 11,
                                        "endCharIndex": 17,
                                        "entityText": "peppers"
                                    },
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 24,
                                        "endCharIndex": 32,
                                        "entityText": "mushrooms"
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
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "6ca0abf4-89db-454a-9e7a-21b100d0c076",
                            "metrics": {
                                "predictMetrics": null
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "36a2fafa-3ca5-4e3f-a391-fe6479c3cc19",
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
                                "text": "add yam",
                                "labelEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 4,
                                        "endCharIndex": 6,
                                        "entityText": "yam"
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
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    },
                                    {
                                        "entityId": "b2001cd7-42be-4366-b774-f629441cb81b",
                                        "values": [
                                            {
                                                "userText": "yam",
                                                "displayText": "yam",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "2196c0ab-4b3c-4315-9428-c11a84a1771b",
                            "metrics": {
                                "predictMetrics": null
                            },
                            "logicResult": {
                                "logicValue": "[\"yam\"]",
                                "changedFilledEntities": [
                                    {
                                        "entityId": "b2001cd7-42be-4366-b774-f629441cb81b",
                                        "values": []
                                    }
                                ]
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "36a2fafa-3ca5-4e3f-a391-fe6479c3cc19",
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
                                "text": "no",
                                "labelEntities": []
                            }
                        ]
                    },
                    "scorerSteps": [
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "4df39065-97b0-40cb-8e63-eedaae5e5fb0",
                            "metrics": {
                                "predictMetrics": null
                            },
                            "logicResult": {
                                "logicValue": null,
                                "changedFilledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": []
                                    },
                                    {
                                        "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
                                        "values": [
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ]
                            }
                        }
                    ]
                },
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "place another order",
                                "labelEntities": []
                            }
                        ]
                    },
                    "scorerSteps": [
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
                                        "values": [
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "7f5fd019-78eb-487b-986b-5ebd44d41ffd",
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
                                "text": "no",
                                "labelEntities": []
                            }
                        ]
                    },
                    "scorerSteps": [
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
                                        "values": [
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "0dbb27ad-3d49-4808-9797-5b40971b6496",
                            "metrics": {
                                "predictMetrics": null
                            }
                        }
                    ]
                }
            ],
            "initialFilledEntities": [],
            "createdDateTime": "2018-12-15T01:10:10.2996231+00:00",
            "lastModifiedDateTime": "2018-12-15T01:28:06+00:00"
        },
        {
            "trainDialogId": "5f917989-2aea-4086-af64-60ecd0dfb17b",
            "rounds": [
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "pizza with peppers, mushrooms, and cheese",
                                "labelEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 11,
                                        "endCharIndex": 17,
                                        "entityText": "peppers"
                                    },
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 20,
                                        "endCharIndex": 28,
                                        "entityText": "mushrooms"
                                    },
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 35,
                                        "endCharIndex": 40,
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
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "peppers",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "cheese",
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
                            "labelAction": "6ca0abf4-89db-454a-9e7a-21b100d0c076",
                            "metrics": {
                                "predictMetrics": null
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "peppers",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "cheese",
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
                            "labelAction": "36a2fafa-3ca5-4e3f-a391-fe6479c3cc19",
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
                                "text": "no",
                                "labelEntities": []
                            }
                        ]
                    },
                    "scorerSteps": [
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "peppers",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "cheese",
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
                            "labelAction": "4df39065-97b0-40cb-8e63-eedaae5e5fb0",
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
                                "text": "order another one",
                                "labelEntities": []
                            }
                        ]
                    },
                    "scorerSteps": [
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
                                        "values": [
                                            {
                                                "userText": "peppers",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "cheese",
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
                            "labelAction": "7f5fd019-78eb-487b-986b-5ebd44d41ffd",
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
                                "text": "yes please",
                                "labelEntities": []
                            }
                        ]
                    },
                    "scorerSteps": [
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
                                        "values": [
                                            {
                                                "userText": "peppers",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "cheese",
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
                            "labelAction": "79a5acc2-c223-4b4a-9c3d-d7d68825265b",
                            "metrics": {
                                "predictMetrics": null
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "peppers",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "cheese",
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
                            "labelAction": "6ca0abf4-89db-454a-9e7a-21b100d0c076",
                            "metrics": {
                                "predictMetrics": null
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "peppers",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "cheese",
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
                            "labelAction": "36a2fafa-3ca5-4e3f-a391-fe6479c3cc19",
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
                                "text": "no",
                                "labelEntities": []
                            }
                        ]
                    },
                    "scorerSteps": [
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "peppers",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "cheese",
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
                            "labelAction": "4df39065-97b0-40cb-8e63-eedaae5e5fb0",
                            "metrics": {
                                "predictMetrics": null
                            }
                        }
                    ]
                }
            ],
            "initialFilledEntities": [],
            "createdDateTime": "2018-12-15T01:10:10.2996231+00:00",
            "lastModifiedDateTime": "2018-12-15T01:10:13+00:00"
        },
        {
            "trainDialogId": "8f4f907a-d4b9-4e38-b828-0f584347ea44",
            "rounds": [
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "order a pizza with cheese and peppers",
                                "labelEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 19,
                                        "endCharIndex": 24,
                                        "entityText": "cheese"
                                    },
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 30,
                                        "endCharIndex": 36,
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
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "peppers",
                                                "displayText": "peppers",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "6ca0abf4-89db-454a-9e7a-21b100d0c076",
                            "metrics": {
                                "predictMetrics": null
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "peppers",
                                                "displayText": "peppers",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "36a2fafa-3ca5-4e3f-a391-fe6479c3cc19",
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
                                "text": "remove peppers and add chicken",
                                "labelEntities": [
                                    {
                                        "entityId": "afa189d2-47e3-47bf-971d-6a78abfe2bb0",
                                        "startCharIndex": 7,
                                        "endCharIndex": 13,
                                        "entityText": "peppers"
                                    },
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 23,
                                        "endCharIndex": 29,
                                        "entityText": "chicken"
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
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    },
                                    {
                                        "entityId": "b2001cd7-42be-4366-b774-f629441cb81b",
                                        "values": [
                                            {
                                                "userText": "chicken",
                                                "displayText": "chicken",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "2196c0ab-4b3c-4315-9428-c11a84a1771b",
                            "metrics": {
                                "predictMetrics": null
                            },
                            "logicResult": {
                                "logicValue": "[\"chicken\"]",
                                "changedFilledEntities": [
                                    {
                                        "entityId": "b2001cd7-42be-4366-b774-f629441cb81b",
                                        "values": []
                                    }
                                ]
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "36a2fafa-3ca5-4e3f-a391-fe6479c3cc19",
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
                                "text": "nope",
                                "labelEntities": []
                            }
                        ]
                    },
                    "scorerSteps": [
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "4df39065-97b0-40cb-8e63-eedaae5e5fb0",
                            "metrics": {
                                "predictMetrics": null
                            },
                            "logicResult": {
                                "logicValue": null,
                                "changedFilledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": []
                                    },
                                    {
                                        "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ]
                            }
                        }
                    ]
                },
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "order another pizza please",
                                "labelEntities": []
                            }
                        ]
                    },
                    "scorerSteps": [
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "7f5fd019-78eb-487b-986b-5ebd44d41ffd",
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
                                "text": "yes",
                                "labelEntities": []
                            }
                        ]
                    },
                    "scorerSteps": [
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "79a5acc2-c223-4b4a-9c3d-d7d68825265b",
                            "metrics": {
                                "predictMetrics": null
                            },
                            "logicResult": {
                                "logicValue": null,
                                "changedFilledEntities": [
                                    {
                                        "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
                                        "values": []
                                    },
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ]
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "6ca0abf4-89db-454a-9e7a-21b100d0c076",
                            "metrics": {
                                "predictMetrics": null
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "36a2fafa-3ca5-4e3f-a391-fe6479c3cc19",
                            "metrics": {
                                "predictMetrics": null
                            }
                        }
                    ]
                }
            ],
            "initialFilledEntities": [],
            "createdDateTime": "2018-12-15T01:10:10.2996231+00:00",
            "lastModifiedDateTime": "2018-12-15T01:28:19+00:00"
        },
        {
            "trainDialogId": "791df2e9-867e-4703-b509-b773df74048b",
            "rounds": [
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "i'm hungry",
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
                            "labelAction": "0dbb27ad-3d49-4808-9797-5b40971b6496",
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
                                "text": "peppers and sausage",
                                "labelEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 0,
                                        "endCharIndex": 6,
                                        "entityText": "peppers"
                                    },
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 12,
                                        "endCharIndex": 18,
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
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "peppers",
                                                "displayText": "peppers",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "6ca0abf4-89db-454a-9e7a-21b100d0c076",
                            "metrics": {
                                "predictMetrics": null
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "peppers",
                                                "displayText": "peppers",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "36a2fafa-3ca5-4e3f-a391-fe6479c3cc19",
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
                                "text": "remove peppers and add olives",
                                "labelEntities": [
                                    {
                                        "entityId": "afa189d2-47e3-47bf-971d-6a78abfe2bb0",
                                        "startCharIndex": 7,
                                        "endCharIndex": 13,
                                        "entityText": "peppers"
                                    },
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 23,
                                        "endCharIndex": 28,
                                        "entityText": "olives"
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
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "olives",
                                                "displayText": "olives",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "6ca0abf4-89db-454a-9e7a-21b100d0c076",
                            "metrics": {
                                "predictMetrics": null
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "olives",
                                                "displayText": "olives",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "36a2fafa-3ca5-4e3f-a391-fe6479c3cc19",
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
                                "text": "add spinach",
                                "labelEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 4,
                                        "endCharIndex": 10,
                                        "entityText": "spinach"
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
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "olives",
                                                "displayText": "olives",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    },
                                    {
                                        "entityId": "b2001cd7-42be-4366-b774-f629441cb81b",
                                        "values": [
                                            {
                                                "userText": "spinach",
                                                "displayText": "spinach",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "2196c0ab-4b3c-4315-9428-c11a84a1771b",
                            "metrics": {
                                "predictMetrics": null
                            },
                            "logicResult": {
                                "logicValue": "[\"spinach\"]",
                                "changedFilledEntities": [
                                    {
                                        "entityId": "b2001cd7-42be-4366-b774-f629441cb81b",
                                        "values": []
                                    }
                                ]
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "olives",
                                                "displayText": "olives",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "36a2fafa-3ca5-4e3f-a391-fe6479c3cc19",
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
                                "text": "no thanks",
                                "labelEntities": []
                            }
                        ]
                    },
                    "scorerSteps": [
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "olives",
                                                "displayText": "olives",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "4df39065-97b0-40cb-8e63-eedaae5e5fb0",
                            "metrics": {
                                "predictMetrics": null
                            },
                            "logicResult": {
                                "logicValue": null,
                                "changedFilledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": []
                                    },
                                    {
                                        "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
                                        "values": [
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "olives",
                                                "displayText": "olives",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ]
                            }
                        }
                    ]
                },
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "order one more pizza",
                                "labelEntities": []
                            }
                        ]
                    },
                    "scorerSteps": [
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
                                        "values": [
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "olives",
                                                "displayText": "olives",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "7f5fd019-78eb-487b-986b-5ebd44d41ffd",
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
                                "text": "no",
                                "labelEntities": []
                            }
                        ]
                    },
                    "scorerSteps": [
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
                                        "values": [
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "olives",
                                                "displayText": "olives",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "0dbb27ad-3d49-4808-9797-5b40971b6496",
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
                                "text": "peppers and cheese",
                                "labelEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 0,
                                        "endCharIndex": 6,
                                        "entityText": "peppers"
                                    },
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 12,
                                        "endCharIndex": 17,
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
                                        "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
                                        "values": [
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "olives",
                                                "displayText": "olives",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    },
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "peppers",
                                                "displayText": "peppers",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "6ca0abf4-89db-454a-9e7a-21b100d0c076",
                            "metrics": {
                                "predictMetrics": null
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
                                        "values": [
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "olives",
                                                "displayText": "olives",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    },
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "peppers",
                                                "displayText": "peppers",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "36a2fafa-3ca5-4e3f-a391-fe6479c3cc19",
                            "metrics": {
                                "predictMetrics": null
                            }
                        }
                    ]
                }
            ],
            "initialFilledEntities": [],
            "createdDateTime": "2018-12-15T01:10:10.2996231+00:00",
            "lastModifiedDateTime": "2018-12-15T01:28:00+00:00"
        },
        {
            "trainDialogId": "8efb68de-e93c-4324-90b0-485fc7207f0f",
            "rounds": [
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "order a pizza",
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
                            "labelAction": "0dbb27ad-3d49-4808-9797-5b40971b6496",
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
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 0,
                                        "endCharIndex": 8,
                                        "entityText": "mushrooms"
                                    },
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
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
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "6ca0abf4-89db-454a-9e7a-21b100d0c076",
                            "metrics": {
                                "predictMetrics": null
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "36a2fafa-3ca5-4e3f-a391-fe6479c3cc19",
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
                                "text": "change mushrooms to peppers",
                                "labelEntities": [
                                    {
                                        "entityId": "afa189d2-47e3-47bf-971d-6a78abfe2bb0",
                                        "startCharIndex": 7,
                                        "endCharIndex": 15,
                                        "entityText": "mushrooms"
                                    },
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 20,
                                        "endCharIndex": 26,
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
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "peppers",
                                                "displayText": "peppers",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "6ca0abf4-89db-454a-9e7a-21b100d0c076",
                            "metrics": {
                                "predictMetrics": null
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "peppers",
                                                "displayText": "peppers",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "36a2fafa-3ca5-4e3f-a391-fe6479c3cc19",
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
                                "text": "add yam",
                                "labelEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 4,
                                        "endCharIndex": 6,
                                        "entityText": "yam"
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
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "peppers",
                                                "displayText": "peppers",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    },
                                    {
                                        "entityId": "b2001cd7-42be-4366-b774-f629441cb81b",
                                        "values": [
                                            {
                                                "userText": "yam",
                                                "displayText": "yam",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "2196c0ab-4b3c-4315-9428-c11a84a1771b",
                            "metrics": {
                                "predictMetrics": null
                            },
                            "logicResult": {
                                "logicValue": "[\"yam\"]",
                                "changedFilledEntities": [
                                    {
                                        "entityId": "b2001cd7-42be-4366-b774-f629441cb81b",
                                        "values": []
                                    }
                                ]
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "peppers",
                                                "displayText": "peppers",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "36a2fafa-3ca5-4e3f-a391-fe6479c3cc19",
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
                                "text": "no",
                                "labelEntities": []
                            }
                        ]
                    },
                    "scorerSteps": [
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "peppers",
                                                "displayText": "peppers",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "4df39065-97b0-40cb-8e63-eedaae5e5fb0",
                            "metrics": {
                                "predictMetrics": null
                            },
                            "logicResult": {
                                "logicValue": null,
                                "changedFilledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": []
                                    },
                                    {
                                        "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "peppers",
                                                "displayText": "peppers",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ]
                            }
                        }
                    ]
                },
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "order another pizza",
                                "labelEntities": []
                            }
                        ]
                    },
                    "scorerSteps": [
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "peppers",
                                                "displayText": "peppers",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "7f5fd019-78eb-487b-986b-5ebd44d41ffd",
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
                                "text": "yes",
                                "labelEntities": []
                            }
                        ]
                    },
                    "scorerSteps": [
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "peppers",
                                                "displayText": "peppers",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "79a5acc2-c223-4b4a-9c3d-d7d68825265b",
                            "metrics": {
                                "predictMetrics": null
                            },
                            "logicResult": {
                                "logicValue": null,
                                "changedFilledEntities": [
                                    {
                                        "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
                                        "values": []
                                    },
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "peppers",
                                                "displayText": "peppers",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ]
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "peppers",
                                                "displayText": "peppers",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "6ca0abf4-89db-454a-9e7a-21b100d0c076",
                            "metrics": {
                                "predictMetrics": null
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "peppers",
                                                "displayText": "peppers",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "36a2fafa-3ca5-4e3f-a391-fe6479c3cc19",
                            "metrics": {
                                "predictMetrics": null
                            }
                        }
                    ]
                }
            ],
            "initialFilledEntities": [],
            "createdDateTime": "2018-12-15T01:10:10.2996231+00:00",
            "lastModifiedDateTime": "2018-12-15T01:28:12+00:00"
        },
        {
            "trainDialogId": "56f5a1cf-0131-45e9-a298-764d853e76d2",
            "rounds": [
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "Order a pizza with cheese",
                                "labelEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 19,
                                        "endCharIndex": 24,
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
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "6ca0abf4-89db-454a-9e7a-21b100d0c076",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.00818943977355957,
                                    "contextDialogBlisTime": 0
                                }
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "36a2fafa-3ca5-4e3f-a391-fe6479c3cc19",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.011008024215698242,
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
                                "text": "add mushrooms and peppers",
                                "labelEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 4,
                                        "endCharIndex": 12,
                                        "entityText": "mushrooms",
                                        "resolution": {},
                                        "builtinType": "LUIS"
                                    },
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 18,
                                        "endCharIndex": 24,
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
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": "LUIS",
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "peppers",
                                                "displayText": "peppers",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "6ca0abf4-89db-454a-9e7a-21b100d0c076",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.0057849884033203125,
                                    "contextDialogBlisTime": 0
                                }
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": "LUIS",
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "peppers",
                                                "displayText": "peppers",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "36a2fafa-3ca5-4e3f-a391-fe6479c3cc19",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.011120319366455078,
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
                                "text": "remove peppers and add sausage",
                                "labelEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 23,
                                        "endCharIndex": 29,
                                        "entityText": "sausage"
                                    },
                                    {
                                        "entityId": "afa189d2-47e3-47bf-971d-6a78abfe2bb0",
                                        "startCharIndex": 7,
                                        "endCharIndex": 13,
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
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": "LUIS",
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "6ca0abf4-89db-454a-9e7a-21b100d0c076",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.010010957717895507,
                                    "contextDialogBlisTime": 0
                                }
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": "LUIS",
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "36a2fafa-3ca5-4e3f-a391-fe6479c3cc19",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.005929708480834961,
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
                                "text": "add yam",
                                "labelEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "startCharIndex": 4,
                                        "endCharIndex": 6,
                                        "entityText": "yam"
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
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": "LUIS",
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    },
                                    {
                                        "entityId": "b2001cd7-42be-4366-b774-f629441cb81b",
                                        "values": [
                                            {
                                                "userText": "yam",
                                                "displayText": "yam",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "2196c0ab-4b3c-4315-9428-c11a84a1771b",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.010696887969970703,
                                    "contextDialogBlisTime": 0
                                }
                            },
                            "logicResult": {
                                "logicValue": "[\"yam\"]",
                                "changedFilledEntities": [
                                    {
                                        "entityId": "b2001cd7-42be-4366-b774-f629441cb81b",
                                        "values": []
                                    }
                                ]
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": "LUIS",
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "36a2fafa-3ca5-4e3f-a391-fe6479c3cc19",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.009795904159545898,
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
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": "LUIS",
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "4df39065-97b0-40cb-8e63-eedaae5e5fb0",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.0060579776763916015,
                                    "contextDialogBlisTime": 0
                                }
                            },
                            "logicResult": {
                                "logicValue": null,
                                "changedFilledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": []
                                    },
                                    {
                                        "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ]
                            }
                        }
                    ]
                },
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "order another",
                                "labelEntities": []
                            }
                        ]
                    },
                    "scorerSteps": [
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "7f5fd019-78eb-487b-986b-5ebd44d41ffd",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.005566835403442383,
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
                                "filledEntities": [
                                    {
                                        "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "79a5acc2-c223-4b4a-9c3d-d7d68825265b",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.011016845703125,
                                    "contextDialogBlisTime": 0
                                }
                            },
                            "logicResult": {
                                "logicValue": null,
                                "changedFilledEntities": [
                                    {
                                        "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
                                        "values": []
                                    },
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ]
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "6ca0abf4-89db-454a-9e7a-21b100d0c076",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.008062124252319336,
                                    "contextDialogBlisTime": 0
                                }
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
                                        "values": [
                                            {
                                                "userText": "cheese",
                                                "displayText": "cheese",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": "mushrooms",
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "sausage",
                                                "displayText": "sausage",
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "36a2fafa-3ca5-4e3f-a391-fe6479c3cc19",
                            "metrics": {
                                "predictMetrics": {
                                    "blisTime": 0.005530595779418945,
                                    "contextDialogBlisTime": 0
                                }
                            }
                        }
                    ]
                }
            ],
            "initialFilledEntities": [],
            "createdDateTime": "2018-12-17T19:31:03.4942991+00:00",
            "lastModifiedDateTime": "2018-12-17T19:33:35+00:00"
        }
    ],
    "actions": [
        {
            "actionId": "0dbb27ad-3d49-4808-9797-5b40971b6496",
            "createdDateTime": "2018-12-15T01:10:10.2996231+00:00",
            "actionType": "TEXT",
            "payload": "{\"text\":\"What would you like on your pizza?\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"What would you like on your pizza?\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [],
            "negativeEntities": [
                "267a89dd-be0a-4079-84ba-369eeb81f8cf"
            ],
            "suggestedEntity": "267a89dd-be0a-4079-84ba-369eeb81f8cf"
        },
        {
            "actionId": "6ca0abf4-89db-454a-9e7a-21b100d0c076",
            "createdDateTime": "2018-12-15T01:10:10.2996231+00:00",
            "actionType": "TEXT",
            "payload": "{\"text\":\"You have $Toppings on your pizza.\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"You have \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"267a89dd-be0a-4079-84ba-369eeb81f8cf\",\"name\":\"Toppings\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$Toppings\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\" on your pizza.\",\"marks\":[]}]}]}]}}}",
            "isTerminal": false,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [
                "267a89dd-be0a-4079-84ba-369eeb81f8cf"
            ],
            "negativeEntities": [
                "b2001cd7-42be-4366-b774-f629441cb81b"
            ]
        },
        {
            "actionId": "36a2fafa-3ca5-4e3f-a391-fe6479c3cc19",
            "createdDateTime": "2018-12-15T01:10:10.2996231+00:00",
            "actionType": "TEXT",
            "payload": "{\"text\":\"Would you like anything else?\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Would you like anything else?\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [
                "267a89dd-be0a-4079-84ba-369eeb81f8cf"
            ],
            "negativeEntities": []
        },
        {
            "actionId": "4df39065-97b0-40cb-8e63-eedaae5e5fb0",
            "createdDateTime": "2018-12-15T01:10:10.2996231+00:00",
            "actionType": "API_LOCAL",
            "payload": "{\"payload\":\"FinalizeOrder\",\"logicArguments\":[],\"renderArguments\":[]}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [
                "267a89dd-be0a-4079-84ba-369eeb81f8cf"
            ],
            "negativeEntities": [
                "b2001cd7-42be-4366-b774-f629441cb81b"
            ]
        },
        {
            "actionId": "7f5fd019-78eb-487b-986b-5ebd44d41ffd",
            "createdDateTime": "2018-12-15T01:10:10.2996231+00:00",
            "actionType": "TEXT",
            "payload": "{\"text\":\"Would you like $LastToppings?\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Would you like \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"931a7300-c0dd-458c-ba2b-f9dde7ae3a93\",\"name\":\"LastToppings\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$LastToppings\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"?\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [
                "931a7300-c0dd-458c-ba2b-f9dde7ae3a93"
            ],
            "negativeEntities": [
                "267a89dd-be0a-4079-84ba-369eeb81f8cf"
            ]
        },
        {
            "actionId": "79a5acc2-c223-4b4a-9c3d-d7d68825265b",
            "createdDateTime": "2018-12-15T01:10:10.2996231+00:00",
            "actionType": "API_LOCAL",
            "payload": "{\"payload\":\"UseLastToppings\",\"logicArguments\":[],\"renderArguments\":[]}",
            "isTerminal": false,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [
                "931a7300-c0dd-458c-ba2b-f9dde7ae3a93"
            ],
            "negativeEntities": []
        },
        {
            "actionId": "2196c0ab-4b3c-4315-9428-c11a84a1771b",
            "createdDateTime": "2018-12-15T01:22:43.4429117+00:00",
            "actionType": "API_LOCAL",
            "payload": "{\"payload\":\"OutOfStock\",\"logicArguments\":[],\"renderArguments\":[]}",
            "isTerminal": false,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [
                "b2001cd7-42be-4366-b774-f629441cb81b"
            ],
            "negativeEntities": []
        }
    ],
    "entities": [
        {
            "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
            "negativeId": "afa189d2-47e3-47bf-971d-6a78abfe2bb0",
            "createdDateTime": "2018-12-15T01:10:10.2996231+00:00",
            "entityName": "Toppings",
            "entityType": "LUIS",
            "isMultivalue": true,
            "isNegatible": true,
            "resolverType": "none"
        },
        {
            "entityId": "afa189d2-47e3-47bf-971d-6a78abfe2bb0",
            "positiveId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
            "createdDateTime": "2018-12-15T01:10:10.2996231+00:00",
            "entityName": "~Toppings",
            "entityType": "LUIS",
            "isMultivalue": true,
            "isNegatible": true,
            "resolverType": "none"
        },
        {
            "entityId": "b2001cd7-42be-4366-b774-f629441cb81b",
            "createdDateTime": "2018-12-15T01:10:10.2996231+00:00",
            "entityName": "OutOfStock",
            "entityType": "LOCAL",
            "isMultivalue": false,
            "isNegatible": false
        },
        {
            "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
            "createdDateTime": "2018-12-15T01:10:10.2996231+00:00",
            "entityName": "LastToppings",
            "entityType": "LOCAL",
            "isMultivalue": true,
            "isNegatible": false
        }
    ],
    "packageId": "b377b44a-5e57-4922-ab6e-411e02d8ce64"
}