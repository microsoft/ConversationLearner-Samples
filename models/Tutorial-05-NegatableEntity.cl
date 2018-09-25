{
    "trainDialogs": [
        {
            "trainDialogId": "02d9f9ff-acc2-472e-a095-1bc817bfbd64",
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
                                "predictMetrics": null
                            }
                        }
                    ]
                },
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "my name is jason",
                                "labelEntities": [
                                    {
                                        "entityId": "4a87bfda-b8ac-4fcc-b96a-6f28c020b7d6",
                                        "startCharIndex": 11,
                                        "endCharIndex": 15,
                                        "entityText": "jason"
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
                                                "userText": "jason",
                                                "displayText": "jason",
                                                "builtinType": "LUIS",
                                                "resolution": {}
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "cea0a327-ea7a-4dbb-b2a7-095adec7ea8e",
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
                                "text": "my name is not jason",
                                "labelEntities": [
                                    {
                                        "entityId": "360fa26f-5302-4efa-876f-b52c679d2ba3",
                                        "startCharIndex": 15,
                                        "endCharIndex": 19,
                                        "entityText": "jason"
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
                                "predictMetrics": null
                            }
                        }
                    ]
                },
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "my name is john",
                                "labelEntities": [
                                    {
                                        "entityId": "4a87bfda-b8ac-4fcc-b96a-6f28c020b7d6",
                                        "startCharIndex": 11,
                                        "endCharIndex": 14,
                                        "entityText": "john"
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
                                                "userText": "john",
                                                "displayText": "john",
                                                "builtinType": "LUIS",
                                                "resolution": {}
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "cea0a327-ea7a-4dbb-b2a7-095adec7ea8e",
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
                                "text": "my name is susan",
                                "labelEntities": [
                                    {
                                        "entityId": "4a87bfda-b8ac-4fcc-b96a-6f28c020b7d6",
                                        "startCharIndex": 11,
                                        "endCharIndex": 15,
                                        "entityText": "susan"
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
                                                "userText": "susan",
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
                            "labelAction": "cea0a327-ea7a-4dbb-b2a7-095adec7ea8e",
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
                                "text": "my name is not susan",
                                "labelEntities": [
                                    {
                                        "entityId": "360fa26f-5302-4efa-876f-b52c679d2ba3",
                                        "startCharIndex": 15,
                                        "endCharIndex": 19,
                                        "entityText": "susan"
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
            "actionId": "bed310c1-ac0b-47d9-9617-3530b9d97406",
            "actionType": "TEXT",
            "payload": "{\"text\":\"I don't know your name\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"I don't know your name\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntities": [],
            "negativeEntities": [
                "4a87bfda-b8ac-4fcc-b96a-6f28c020b7d6"
            ]
        },
        {
            "actionId": "cea0a327-ea7a-4dbb-b2a7-095adec7ea8e",
            "actionType": "TEXT",
            "payload": "{\"text\":\"I know your name, it is $name\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"I know your name, it is \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"4a87bfda-b8ac-4fcc-b96a-6f28c020b7d6\",\"name\":\"name\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$name\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntities": [
                "4a87bfda-b8ac-4fcc-b96a-6f28c020b7d6"
            ],
            "negativeEntities": []
        }
    ],
    "entities": [
        {
            "entityId": "4a87bfda-b8ac-4fcc-b96a-6f28c020b7d6",
            "entityName": "name",
            "entityType": "LUIS",
            "isMultivalue": false,
            "isNegatible": true,
            "isReversable": false,
            "negativeId": "360fa26f-5302-4efa-876f-b52c679d2ba3"
        },
        {
            "entityId": "360fa26f-5302-4efa-876f-b52c679d2ba3",
            "entityName": "~name",
            "entityType": "LUIS",
            "isMultivalue": false,
            "isNegatible": true,
            "isReversable": false,
            "positiveId": "4a87bfda-b8ac-4fcc-b96a-6f28c020b7d6"
        }
    ],
    "packageId": "5b3b3ea7-986e-4443-919d-8e6ff866685f"
}