{
    "trainDialogs": [
        {
            "trainDialogId": "4b206ec9-806d-4af1-9282-445504e6a48a",
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
                            "labelAction": "f0320c51-bbbf-4cee-a1b0-c8f708540832",
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
                                "text": "foo",
                                "labelEntities": [
                                    {
                                        "entityId": "d0c36e03-9c4e-4c3a-98c1-450293c733a6",
                                        "startCharIndex": 0,
                                        "endCharIndex": 2,
                                        "entityText": "foo"
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
                                        "entityId": "c3c16478-9f69-4d93-adb1-bda9747da70e",
                                        "values": [
                                            {
                                                "userText": "foo",
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
                            "labelAction": "b7ca5246-36af-459a-9497-f4f8d7a55326",
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
                                "text": "new york",
                                "labelEntities": [
                                    {
                                        "entityId": "d0c36e03-9c4e-4c3a-98c1-450293c733a6",
                                        "startCharIndex": 0,
                                        "endCharIndex": 7,
                                        "entityText": "new york"
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
                                        "entityId": "d0c36e03-9c4e-4c3a-98c1-450293c733a6",
                                        "values": [
                                            {
                                                "userText": "new york",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    },
                                    {
                                        "entityId": "06b29500-f329-44ec-91ae-e71ec870ee58",
                                        "values": [
                                            {
                                                "userText": "new york",
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
                            "labelAction": "571203ef-f267-4efa-817d-3229f9ba35ac",
                            "metrics": {
                                "predictMetrics": null
                            }
                        }
                    ]
                }
            ],
            "initialFilledEntities": [],
            "createdDateTime": "2018-12-18T23:37:58.6327554+00:00",
            "lastModifiedDateTime": "2018-12-18T23:37:58+00:00"
        },
        {
            "trainDialogId": "3c5f6e63-5c96-4fb5-a29b-0bb7fc4f536d",
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
                            "labelAction": "f0320c51-bbbf-4cee-a1b0-c8f708540832",
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
                                "text": "big apple",
                                "labelEntities": [
                                    {
                                        "entityId": "d0c36e03-9c4e-4c3a-98c1-450293c733a6",
                                        "startCharIndex": 0,
                                        "endCharIndex": 8,
                                        "entityText": "big apple"
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
                                        "entityId": "d0c36e03-9c4e-4c3a-98c1-450293c733a6",
                                        "values": [
                                            {
                                                "userText": "big apple",
                                                "displayText": null,
                                                "builtinType": null,
                                                "resolution": null
                                            }
                                        ]
                                    },
                                    {
                                        "entityId": "06b29500-f329-44ec-91ae-e71ec870ee58",
                                        "values": [
                                            {
                                                "userText": "new york",
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
                            "labelAction": "571203ef-f267-4efa-817d-3229f9ba35ac",
                            "metrics": {
                                "predictMetrics": null
                            }
                        }
                    ]
                }
            ],
            "initialFilledEntities": [],
            "createdDateTime": "2018-12-18T23:37:58.6327554+00:00",
            "lastModifiedDateTime": "2018-12-18T23:37:58+00:00"
        }
    ],
    "actions": [
        {
            "actionId": "f0320c51-bbbf-4cee-a1b0-c8f708540832",
            "createdDateTime": "2018-12-18T23:37:58.6327554+00:00",
            "actionType": "TEXT",
            "payload": "{\"text\":\"Which city do you want?\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Which city do you want?\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [],
            "negativeEntities": [
                "d0c36e03-9c4e-4c3a-98c1-450293c733a6"
            ],
            "suggestedEntity": "d0c36e03-9c4e-4c3a-98c1-450293c733a6"
        },
        {
            "actionId": "b7ca5246-36af-459a-9497-f4f8d7a55326",
            "createdDateTime": "2018-12-18T23:37:58.6327554+00:00",
            "actionType": "TEXT",
            "payload": "{\"text\":\"I don't know this city: $CityUnknown.  Which city do you want?\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"I don't know this city: \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"c3c16478-9f69-4d93-adb1-bda9747da70e\",\"name\":\"CityUnknown\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$CityUnknown\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\".  Which city do you want?\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [
                "c3c16478-9f69-4d93-adb1-bda9747da70e"
            ],
            "negativeEntities": []
        },
        {
            "actionId": "571203ef-f267-4efa-817d-3229f9ba35ac",
            "createdDateTime": "2018-12-18T23:37:58.6327554+00:00",
            "actionType": "TEXT",
            "payload": "{\"text\":\"You said $City, and I resolved that to $CityResolved. \",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"You said \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"d0c36e03-9c4e-4c3a-98c1-450293c733a6\",\"name\":\"City\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$City\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\", and I resolved that to \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"06b29500-f329-44ec-91ae-e71ec870ee58\",\"name\":\"CityResolved\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$CityResolved\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\". \",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [
                "d0c36e03-9c4e-4c3a-98c1-450293c733a6",
                "06b29500-f329-44ec-91ae-e71ec870ee58"
            ],
            "negativeEntities": []
        }
    ],
    "entities": [
        {
            "entityId": "d0c36e03-9c4e-4c3a-98c1-450293c733a6",
            "createdDateTime": "2018-12-18T23:37:58.6327554+00:00",
            "entityName": "City",
            "entityType": "LUIS",
            "isMultivalue": false,
            "isNegatible": false,
            "resolverType": "none"
        },
        {
            "entityId": "c3c16478-9f69-4d93-adb1-bda9747da70e",
            "createdDateTime": "2018-12-18T23:37:58.6327554+00:00",
            "entityName": "CityUnknown",
            "entityType": "LOCAL",
            "isMultivalue": false,
            "isNegatible": false
        },
        {
            "entityId": "06b29500-f329-44ec-91ae-e71ec870ee58",
            "createdDateTime": "2018-12-18T23:37:58.6327554+00:00",
            "entityName": "CityResolved",
            "entityType": "LOCAL",
            "isMultivalue": false,
            "isNegatible": false
        }
    ],
    "packageId": "19597650-c11b-4d81-8cfc-ab761e322b45"
}