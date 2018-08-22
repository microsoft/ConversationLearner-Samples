{
    "trainDialogs": [
        {
            "trainDialogId": "0a2b3cfe-34f1-4dbd-8567-de783bec7507",
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
                            "labelAction": "55a490ff-913a-4611-9724-4d6feaafc6ac",
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
                            "labelAction": "b1054276-e181-4348-8f55-d898c8538280",
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
                                "text": "8",
                                "labelEntities": [
                                    {
                                        "entityId": "c09eb04a-6d96-4710-a59d-ce4e60188781",
                                        "startCharIndex": 0,
                                        "endCharIndex": 0,
                                        "entityText": "8"
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
                                        "entityId": "c09eb04a-6d96-4710-a59d-ce4e60188781",
                                        "values": [
                                            {
                                                "userText": "8",
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
                            "labelAction": "3a2e1612-a568-4010-a430-27605bda4dd7",
                            "metrics": {
                                "predictMetrics": null
                            }
                        },
                        {
                            "input": {
                                "filledEntities": [
                                    {
                                        "entityId": "c09eb04a-6d96-4710-a59d-ce4e60188781",
                                        "values": [
                                            {
                                                "userText": "8",
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
                            "labelAction": "5c1797e4-f833-412f-9799-6126f7cc0085",
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
                            "labelAction": "b1054276-e181-4348-8f55-d898c8538280",
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
            "actionId": "55a490ff-913a-4611-9724-4d6feaafc6ac",
            "actionType": "API_LOCAL",
            "payload": "{\"payload\":\"RandomGreeting\",\"arguments\":[]}",
            "isTerminal": false,
            "requiredEntities": [],
            "negativeEntities": []
        },
        {
            "actionId": "5c1797e4-f833-412f-9799-6126f7cc0085",
            "actionType": "API_LOCAL",
            "payload": "{\"payload\":\"ClearEntities\",\"arguments\":[]}",
            "isTerminal": false,
            "requiredEntities": [],
            "negativeEntities": []
        },
        {
            "actionId": "b1054276-e181-4348-8f55-d898c8538280",
            "actionType": "TEXT",
            "payload": "{\"text\":\"What number do you want to multiply by 12?\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"What number do you want to multiply by 12?\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntities": [],
            "negativeEntities": [
                "c09eb04a-6d96-4710-a59d-ce4e60188781"
            ],
            "suggestedEntity": "c09eb04a-6d96-4710-a59d-ce4e60188781"
        },
        {
            "actionId": "3a2e1612-a568-4010-a430-27605bda4dd7",
            "actionType": "API_LOCAL",
            "payload": "{\"payload\":\"Multiply\",\"arguments\":[{\"parameter\":\"num1string\",\"value\":{\"text\":\"$number\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"\",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"c09eb04a-6d96-4710-a59d-ce4e60188781\",\"name\":\"number\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$number\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"\",\"marks\":[]}]}]}]}}}},{\"parameter\":\"num2string\",\"value\":{\"text\":\"12\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"12\",\"marks\":[]}]}]}]}}}}]}",
            "isTerminal": false,
            "requiredEntities": [
                "c09eb04a-6d96-4710-a59d-ce4e60188781"
            ],
            "negativeEntities": []
        }
    ],
    "entities": [
        {
            "entityId": "c09eb04a-6d96-4710-a59d-ce4e60188781",
            "entityName": "number",
            "entityType": "LUIS",
            "isMultivalue": false,
            "isNegatible": false,
            "isReversable": false
        }
    ],
    "packageId": "6bcafdf9-fbfb-425b-a300-b4a9ce06571f"
}