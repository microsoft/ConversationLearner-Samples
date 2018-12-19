{
    "trainDialogs": [
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
            ],
            "initialFilledEntities": [],
            "createdDateTime": "2018-12-18T23:50:55.3419265+00:00",
            "lastModifiedDateTime": "2018-12-18T23:50:55+00:00"
        },
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
            ],
            "initialFilledEntities": [],
            "createdDateTime": "2018-12-18T23:50:55.3419265+00:00",
            "lastModifiedDateTime": "2018-12-18T23:50:55+00:00"
        }
    ],
    "actions": [
        {
            "actionId": "d8fa5a57-5fc4-442e-bd7b-310e2b34591a",
            "createdDateTime": "2018-12-18T23:50:55.3419265+00:00",
            "actionType": "CARD",
            "payload": "{\"payload\":\"prompt\",\"arguments\":[{\"parameter\":\"question\",\"value\":{\"text\":\"Go left or right?\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Go left or right?\",\"marks\":[]}]}]}]}}}},{\"parameter\":\"button1\",\"value\":{\"text\":\"Left\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Left\",\"marks\":[]}]}]}]}}}},{\"parameter\":\"button2\",\"value\":{\"text\":\"Right\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Right\",\"marks\":[]}]}]}]}}}}]}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [],
            "negativeEntities": []
        },
        {
            "actionId": "8edb5850-d195-4c42-bdd1-621e61786da2",
            "createdDateTime": "2018-12-18T23:50:55.3419265+00:00",
            "actionType": "TEXT",
            "payload": "{\"text\":\"Left\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Left\",\"marks\":[]}]}]}]}}}",
            "isTerminal": false,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [],
            "negativeEntities": []
        },
        {
            "actionId": "4f34abce-5973-4eed-9e57-0bfaba6d3266",
            "createdDateTime": "2018-12-18T23:50:55.3419265+00:00",
            "actionType": "TEXT",
            "payload": "{\"text\":\"Right\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Right\",\"marks\":[]}]}]}]}}}",
            "isTerminal": false,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [],
            "negativeEntities": []
        }
    ],
    "entities": [],
    "packageId": "15eaa8de-5b33-4f57-86c5-1f44c07fce33"
}