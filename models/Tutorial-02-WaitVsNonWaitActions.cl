{
    "trainDialogs": [
        {
            "trainDialogId": "af48bca4-463f-4e6f-9702-f9281864764b",
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
                            "labelAction": "03704578-5d59-4eff-a86b-1837f23cfbe3",
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
                                "text": "cow",
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
                            "labelAction": "f5061559-1024-4c07-93fe-cfa12f832c63",
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
                            "labelAction": "03704578-5d59-4eff-a86b-1837f23cfbe3",
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
                                "text": "duck",
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
                            "labelAction": "01314b84-742f-453d-9ab6-dfb7f9c2303f",
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
                            "labelAction": "03704578-5d59-4eff-a86b-1837f23cfbe3",
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
            "actionId": "03704578-5d59-4eff-a86b-1837f23cfbe3",
            "actionType": "TEXT",
            "payload": "{\"text\":\"Which animal do you want?\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Which animal do you want?\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntities": [],
            "negativeEntities": []
        },
        {
            "actionId": "f5061559-1024-4c07-93fe-cfa12f832c63",
            "actionType": "TEXT",
            "payload": "{\"text\":\"Cows say moo!\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Cows say moo!\",\"marks\":[]}]}]}]}}}",
            "isTerminal": false,
            "requiredEntities": [],
            "negativeEntities": []
        },
        {
            "actionId": "01314b84-742f-453d-9ab6-dfb7f9c2303f",
            "actionType": "TEXT",
            "payload": "{\"text\":\"Ducks say quack!\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Ducks say quack!\",\"marks\":[]}]}]}]}}}",
            "isTerminal": false,
            "requiredEntities": [],
            "negativeEntities": []
        }
    ],
    "entities": [],
    "packageId": "a42f8360-7cc3-4308-ba28-69b9f6b4a13e"
}