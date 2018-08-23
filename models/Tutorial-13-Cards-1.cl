{
    "trainDialogs": [
        {
            "trainDialogId": "b18cc3d0-4ac6-49c1-b9ab-c76b1c79ca39",
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
                            "labelAction": "d8fa5a57-5fc4-442e-bd7b-310e2b34591a",
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
                                "text": "Left",
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
                            "labelAction": "8edb5850-d195-4c42-bdd1-621e61786da2",
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
                            "labelAction": "d8fa5a57-5fc4-442e-bd7b-310e2b34591a",
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
                                "text": "Right",
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
                            "labelAction": "4f34abce-5973-4eed-9e57-0bfaba6d3266",
                            "metrics": {
                                "predictMetrics": null
                            }
                        }
                    ]
                }
            ]
        },
        {
            "trainDialogId": "8db1e0fe-eed6-4dc9-9b77-9faecc19eae6",
            "rounds": [
                {
                    "extractorStep": {
                        "textVariations": [
                            {
                                "text": "hi",
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
                            "labelAction": "d8fa5a57-5fc4-442e-bd7b-310e2b34591a",
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
                                "text": "Left",
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
                            "labelAction": "8edb5850-d195-4c42-bdd1-621e61786da2",
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
                            "labelAction": "d8fa5a57-5fc4-442e-bd7b-310e2b34591a",
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
                                "text": "Right",
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
                            "labelAction": "4f34abce-5973-4eed-9e57-0bfaba6d3266",
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
                            "labelAction": "d8fa5a57-5fc4-442e-bd7b-310e2b34591a",
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
            "actionId": "d8fa5a57-5fc4-442e-bd7b-310e2b34591a",
            "actionType": "CARD",
            "payload": "{\"payload\":\"prompt\",\"arguments\":[{\"parameter\":\"question\",\"value\":{\"text\":\"Go left or right?\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Go left or right?\",\"marks\":[]}]}]}]}}}},{\"parameter\":\"button1\",\"value\":{\"text\":\"Left\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Left\",\"marks\":[]}]}]}]}}}},{\"parameter\":\"button2\",\"value\":{\"text\":\"Right\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Right\",\"marks\":[]}]}]}]}}}}]}",
            "isTerminal": true,
            "requiredEntities": [],
            "negativeEntities": []
        },
        {
            "actionId": "8edb5850-d195-4c42-bdd1-621e61786da2",
            "actionType": "TEXT",
            "payload": "{\"text\":\"Left\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Left\",\"marks\":[]}]}]}]}}}",
            "isTerminal": false,
            "requiredEntities": [],
            "negativeEntities": []
        },
        {
            "actionId": "4f34abce-5973-4eed-9e57-0bfaba6d3266",
            "actionType": "TEXT",
            "payload": "{\"text\":\"Right\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Right\",\"marks\":[]}]}]}]}}}",
            "isTerminal": false,
            "requiredEntities": [],
            "negativeEntities": []
        }
    ],
    "entities": [],
    "packageId": "5183a7a2-d789-495e-b001-43bbb9fe7829"
}