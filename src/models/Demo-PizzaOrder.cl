{
    "trainDialogs": [
        {
            "trainDialogId": "591fa241-a1de-4544-bba4-b240cd876b73",
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "peppers",
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
                                                "userText": "cheese",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "peppers",
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "peppers",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            }
                                        ]
                                    },
                                    {
                                        "entityId": "b2001cd7-42be-4366-b774-f629441cb81b",
                                        "values": [
                                            {
                                                "userText": "yam",
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
                            "labelAction": "f67f83b3-79a5-4bdf-88c7-9a0f400f2829",
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "peppers",
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
                                                "userText": "cheese",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "peppers",
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "peppers",
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "peppers",
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
                                                "userText": "cheese",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "peppers",
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
                                                "userText": "cheese",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "peppers",
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
                }
            ]
        },
        {
            "trainDialogId": "277f666a-13b3-46ec-a1d4-60665f6be3be",
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "sausage",
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
                                                "userText": "sausage",
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "olives",
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
                                                "userText": "sausage",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "olives",
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "olives",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            }
                                        ]
                                    },
                                    {
                                        "entityId": "b2001cd7-42be-4366-b774-f629441cb81b",
                                        "values": [
                                            {
                                                "userText": "spinach",
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
                            "labelAction": "f67f83b3-79a5-4bdf-88c7-9a0f400f2829",
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "olives",
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "olives",
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "olives",
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "olives",
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "olives",
                                                "displayText": null,
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
                                        "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
                                        "values": [
                                            {
                                                "userText": "sausage",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "olives",
                                                "displayText": null,
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
                }
            ]
        },
        {
            "trainDialogId": "8f0c1624-3b20-45f7-83fe-eca5c685e3fb",
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "peppers",
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
                                                "userText": "cheese",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "peppers",
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            }
                                        ]
                                    },
                                    {
                                        "entityId": "b2001cd7-42be-4366-b774-f629441cb81b",
                                        "values": [
                                            {
                                                "userText": "chicken",
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
                            "labelAction": "f67f83b3-79a5-4bdf-88c7-9a0f400f2829",
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
                }
            ]
        },
        {
            "trainDialogId": "99b4255e-5294-4e67-8c58-50f7d58e5f40",
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
            ]
        },
        {
            "trainDialogId": "87bde973-044d-4951-a1f1-1caebe8adb9a",
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "cheese",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "peppers",
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
                                                "userText": "sausage",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "cheese",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "peppers",
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "cheese",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
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
                                                "userText": "sausage",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "cheese",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "cheese",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            }
                                        ]
                                    },
                                    {
                                        "entityId": "b2001cd7-42be-4366-b774-f629441cb81b",
                                        "values": [
                                            {
                                                "userText": "yam",
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
                            "labelAction": "f67f83b3-79a5-4bdf-88c7-9a0f400f2829",
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "cheese",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
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
                                                "userText": "sausage",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "cheese",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "cheese",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "cheese",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
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
                            "labelAction": "0dbb27ad-3d49-4808-9797-5b40971b6496",
                            "metrics": {
                                "predictMetrics": null
                            }
                        }
                    ]
                }
            ]
        },
        {
            "trainDialogId": "72939dff-ee7e-4932-8a1d-c5c8d885b463",
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "mushrooms",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            }
                                        ]
                                    },
                                    {
                                        "entityId": "b2001cd7-42be-4366-b774-f629441cb81b",
                                        "values": [
                                            {
                                                "userText": "yam",
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
                            "labelAction": "f67f83b3-79a5-4bdf-88c7-9a0f400f2829",
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "mushrooms",
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": {}
                                            },
                                            {
                                                "userText": "mushrooms",
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
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
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
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
                                                "userText": "cheese",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
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
                                                "userText": "cheese",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            },
                                            {
                                                "userText": "mushrooms",
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
                }
            ]
        }
    ],
    "actions": [
        {
            "actionId": "0dbb27ad-3d49-4808-9797-5b40971b6496",
            "actionType": "TEXT",
            "payload": "{\"text\":\"What would you like on your pizza?\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"What would you like on your pizza?\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntities": [],
            "negativeEntities": [
                "267a89dd-be0a-4079-84ba-369eeb81f8cf"
            ],
            "suggestedEntity": "267a89dd-be0a-4079-84ba-369eeb81f8cf"
        },
        {
            "actionId": "6ca0abf4-89db-454a-9e7a-21b100d0c076",
            "actionType": "TEXT",
            "payload": "{\"text\":\"You have $Toppings on your pizza.\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"You have \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"267a89dd-be0a-4079-84ba-369eeb81f8cf\",\"name\":\"Toppings\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$Toppings\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\" on your pizza.\",\"marks\":[]}]}]}]}}}",
            "isTerminal": false,
            "requiredEntities": [
                "267a89dd-be0a-4079-84ba-369eeb81f8cf"
            ],
            "negativeEntities": [
                "b2001cd7-42be-4366-b774-f629441cb81b"
            ]
        },
        {
            "actionId": "36a2fafa-3ca5-4e3f-a391-fe6479c3cc19",
            "actionType": "TEXT",
            "payload": "{\"text\":\"Would you like anything else?\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Would you like anything else?\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntities": [
                "267a89dd-be0a-4079-84ba-369eeb81f8cf"
            ],
            "negativeEntities": []
        },
        {
            "actionId": "4df39065-97b0-40cb-8e63-eedaae5e5fb0",
            "actionType": "API_LOCAL",
            "payload": "{\"payload\":\"FinalizeOrder\",\"arguments\":[]}",
            "isTerminal": true,
            "requiredEntities": [
                "267a89dd-be0a-4079-84ba-369eeb81f8cf"
            ],
            "negativeEntities": [
                "b2001cd7-42be-4366-b774-f629441cb81b"
            ]
        },
        {
            "actionId": "f67f83b3-79a5-4bdf-88c7-9a0f400f2829",
            "actionType": "TEXT",
            "payload": "{\"text\":\"We don't have $OutOfStock.\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"We don't have \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"b2001cd7-42be-4366-b774-f629441cb81b\",\"name\":\"OutOfStock\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$OutOfStock\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\".\",\"marks\":[]}]}]}]}}}",
            "isTerminal": false,
            "requiredEntities": [
                "b2001cd7-42be-4366-b774-f629441cb81b"
            ],
            "negativeEntities": []
        },
        {
            "actionId": "7f5fd019-78eb-487b-986b-5ebd44d41ffd",
            "actionType": "TEXT",
            "payload": "{\"text\":\"Would you like $LastToppings?\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Would you like \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"931a7300-c0dd-458c-ba2b-f9dde7ae3a93\",\"name\":\"LastToppings\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$LastToppings\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"?\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntities": [
                "931a7300-c0dd-458c-ba2b-f9dde7ae3a93"
            ],
            "negativeEntities": [
                "267a89dd-be0a-4079-84ba-369eeb81f8cf"
            ]
        },
        {
            "actionId": "79a5acc2-c223-4b4a-9c3d-d7d68825265b",
            "actionType": "API_LOCAL",
            "payload": "{\"payload\":\"UseLastToppings\",\"arguments\":[]}",
            "isTerminal": false,
            "requiredEntities": [
                "931a7300-c0dd-458c-ba2b-f9dde7ae3a93"
            ],
            "negativeEntities": []
        }
    ],
    "entities": [
        {
            "entityId": "267a89dd-be0a-4079-84ba-369eeb81f8cf",
            "entityName": "Toppings",
            "entityType": "LUIS",
            "isMultivalue": true,
            "isNegatible": true,
            "isReversable": false,
            "negativeId": "afa189d2-47e3-47bf-971d-6a78abfe2bb0"
        },
        {
            "entityId": "afa189d2-47e3-47bf-971d-6a78abfe2bb0",
            "entityName": "~Toppings",
            "entityType": "LUIS",
            "isMultivalue": true,
            "isNegatible": true,
            "isReversable": false,
            "positiveId": "267a89dd-be0a-4079-84ba-369eeb81f8cf"
        },
        {
            "entityId": "b2001cd7-42be-4366-b774-f629441cb81b",
            "entityName": "OutOfStock",
            "entityType": "LOCAL",
            "isMultivalue": false,
            "isNegatible": false,
            "isReversable": false
        },
        {
            "entityId": "931a7300-c0dd-458c-ba2b-f9dde7ae3a93",
            "entityName": "LastToppings",
            "entityType": "LOCAL",
            "isMultivalue": true,
            "isNegatible": false,
            "isReversable": false
        }
    ],
    "packageId": "e886b17a-a384-4668-b3d0-b156992747bd"
}