{
    "trainDialogs": [
        {
            "trainDialogId": "f979e975-3650-43f4-94a5-71e392425839",
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
                            "labelAction": "d5dd27be-628c-4b56-bd6f-ae0c9b1775cf",
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
                                "text": "today",
                                "labelEntities": [
                                    {
                                        "entityId": "cb7c14f5-bb3b-4f4f-a7ba-bd8289efa995",
                                        "startCharIndex": 0,
                                        "endCharIndex": 4,
                                        "entityText": "today"
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
                                        "entityId": "cb7c14f5-bb3b-4f4f-a7ba-bd8289efa995",
                                        "values": [
                                            {
                                                "userText": "today",
                                                "displayText": "2018-03-08",
                                                "builtinType": "builtin.datetimeV2.date",
                                                "resolution": {
                                                    "values": [
                                                        {
                                                            "timex": "2018-03-08",
                                                            "type": "date",
                                                            "value": "2018-03-08"
                                                        }
                                                    ]
                                                }
                                            }
                                        ]
                                    }
                                ],
                                "context": {},
                                "maskedActions": []
                            },
                            "labelAction": "5a7e8dba-1f1f-4316-aebb-f059387e4a09",
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
            "actionId": "5a7e8dba-1f1f-4316-aebb-f059387e4a09",
            "actionType": "TEXT",
            "payload": "{\"text\":\"The date is $luis-datetimev2\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"The date is \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"cb7c14f5-bb3b-4f4f-a7ba-bd8289efa995\",\"name\":\"luis-datetimev2\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$luis-datetimev2\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntities": [
                "cb7c14f5-bb3b-4f4f-a7ba-bd8289efa995"
            ],
            "negativeEntities": []
        },
        {
            "actionId": "d5dd27be-628c-4b56-bd6f-ae0c9b1775cf",
            "actionType": "TEXT",
            "payload": "{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"What's the date?\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntities": [],
            "negativeEntities": [
                "cb7c14f5-bb3b-4f4f-a7ba-bd8289efa995"
            ]
        }
    ],
    "entities": [
        {
            "entityId": "cb7c14f5-bb3b-4f4f-a7ba-bd8289efa995",
            "entityName": "luis-datetimev2",
            "entityType": "datetimeV2",
            "isMultivalue": true,
            "isNegatible": false,
            "isReversable": false
        }
    ],
    "packageId": "f15f15b4-3984-465a-bb09-7d0b66c256c3"
}