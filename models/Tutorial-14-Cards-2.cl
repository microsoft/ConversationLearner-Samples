{
    "trainDialogs": [],
    "actions": [
        {
            "actionId": "b5d52320-f697-47ee-b6ce-d61b4d07ff5b",
            "actionType": "CARD",
            "payload": "{\"payload\":\"shippingAddress\",\"arguments\":[]}",
            "isTerminal": true,
            "requiredEntities": [],
            "negativeEntities": [
                "45a82c68-0eca-49f6-a0d4-b0cb2dbb1ad2",
                "ccc80248-6286-42c6-953e-d31d7443acb1",
                "3da63c60-6c79-4650-b485-f5b17d7939f5"
            ]
        },
        {
            "actionId": "3c48dc34-b532-4991-b27f-70c8d1c204b1",
            "actionType": "TEXT",
            "payload": "{\"text\":\"Shipping to $Address-Street, $Address-City $Address-State\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Shipping to \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"ccc80248-6286-42c6-953e-d31d7443acb1\",\"name\":\"Address-Street\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$Address-Street\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\", \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"45a82c68-0eca-49f6-a0d4-b0cb2dbb1ad2\",\"name\":\"Address-City\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$Address-City\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\" \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"3da63c60-6c79-4650-b485-f5b17d7939f5\",\"name\":\"Address-State\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$Address-State\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntities": [
                "ccc80248-6286-42c6-953e-d31d7443acb1",
                "45a82c68-0eca-49f6-a0d4-b0cb2dbb1ad2",
                "3da63c60-6c79-4650-b485-f5b17d7939f5"
            ],
            "negativeEntities": []
        }
    ],
    "entities": [
        {
            "entityId": "45a82c68-0eca-49f6-a0d4-b0cb2dbb1ad2",
            "entityName": "Address-City",
            "entityType": "LUIS",
            "isMultivalue": false,
            "isNegatible": false,
            "isReversable": false
        },
        {
            "entityId": "ccc80248-6286-42c6-953e-d31d7443acb1",
            "entityName": "Address-Street",
            "entityType": "LUIS",
            "isMultivalue": false,
            "isNegatible": false,
            "isReversable": false
        },
        {
            "entityId": "3da63c60-6c79-4650-b485-f5b17d7939f5",
            "entityName": "Address-State",
            "entityType": "LUIS",
            "isMultivalue": false,
            "isNegatible": false,
            "isReversable": false
        }
    ],
    "packageId": "3dae58e7-d57f-4ddb-b6d1-e28d2c4855af"
}