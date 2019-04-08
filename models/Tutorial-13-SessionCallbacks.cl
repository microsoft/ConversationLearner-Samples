{
    "trainDialogs": [],
    "actions": [
        {
            "actionId": "f6466ecc-a075-4541-bce9-29ddf23765de",
            "createdDateTime": "2019-02-13T17:23:08.2207961+00:00",
            "actionType": "TEXT",
            "payload": "{\"text\":\"Hi, I'm $BotName.  What's your name?\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Hi, I'm \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"45e0cd0b-889f-4c14-bdd0-dd3386828791\",\"name\":\"BotName\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$BotName\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\".  What's your name?\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [
                "45e0cd0b-889f-4c14-bdd0-dd3386828791"
            ],
            "negativeEntities": [
                "54e7a247-2111-4c0f-992c-cd31f8d3121f"
            ],
            "suggestedEntity": "54e7a247-2111-4c0f-992c-cd31f8d3121f"
        },
        {
            "actionId": "ee1000fc-9e0c-4097-9742-715cc5260ed7",
            "createdDateTime": "2019-02-13T17:23:08.2520629+00:00",
            "actionType": "TEXT",
            "payload": "{\"text\":\"Hi $UserName.  What is your phone number?\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Hi \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"54e7a247-2111-4c0f-992c-cd31f8d3121f\",\"name\":\"UserName\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$UserName\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\".  What is your phone number?\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [
                "54e7a247-2111-4c0f-992c-cd31f8d3121f"
            ],
            "negativeEntities": [
                "8f842244-b059-4107-b5b2-c257d9a1c230"
            ],
            "suggestedEntity": "8f842244-b059-4107-b5b2-c257d9a1c230"
        },
        {
            "actionId": "d6f7d19a-19be-4d58-9de2-9daaea578480",
            "createdDateTime": "2019-02-13T17:23:08.2520629+00:00",
            "actionType": "TEXT",
            "payload": "{\"text\":\"Can you tell $BotName your location, $UserName?\",\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Can you tell \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"45e0cd0b-889f-4c14-bdd0-dd3386828791\",\"name\":\"BotName\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$BotName\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\" your location, \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"54e7a247-2111-4c0f-992c-cd31f8d3121f\",\"name\":\"UserName\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$UserName\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"?\",\"marks\":[]}]}]}]}}}",
            "isTerminal": true,
            "requiredEntitiesFromPayload": [],
            "requiredEntities": [
                "45e0cd0b-889f-4c14-bdd0-dd3386828791",
                "54e7a247-2111-4c0f-992c-cd31f8d3121f"
            ],
            "negativeEntities": [
                "718df4cd-83ab-4cc0-8959-c83d91f20bd6"
            ],
            "suggestedEntity": "718df4cd-83ab-4cc0-8959-c83d91f20bd6"
        },
        {
            "actionId": "9ba7ca4e-8cf0-419d-96a5-3987b2b8456b",
            "createdDateTime": "2019-02-13T17:23:08.2520629+00:00",
            "actionType": "TEXT",
            "payload": "{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"paragraph\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"So, \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"54e7a247-2111-4c0f-992c-cd31f8d3121f\",\"name\":\"UserName\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$UserName\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\", you are in \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"718df4cd-83ab-4cc0-8959-c83d91f20bd6\",\"name\":\"UserLocation\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$UserLocation\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"\",\"marks\":[]}]}]}]}}}",
            "isTerminal": false,
            "requiredEntitiesFromPayload": [
                "54e7a247-2111-4c0f-992c-cd31f8d3121f",
                "718df4cd-83ab-4cc0-8959-c83d91f20bd6"
            ],
            "requiredEntities": [
                "54e7a247-2111-4c0f-992c-cd31f8d3121f",
                "718df4cd-83ab-4cc0-8959-c83d91f20bd6"
            ],
            "negativeEntities": []
        }
    ],
    "entities": [
        {
            "entityId": "54e7a247-2111-4c0f-992c-cd31f8d3121f",
            "createdDateTime": "2019-02-13T17:23:08.2207961+00:00",
            "entityName": "UserName",
            "entityType": "LUIS",
            "isMultivalue": false,
            "isNegatible": false,
            "resolverType": "none"
        },
        {
            "entityId": "45e0cd0b-889f-4c14-bdd0-dd3386828791",
            "createdDateTime": "2019-02-13T17:23:08.2207961+00:00",
            "entityName": "BotName",
            "entityType": "LOCAL",
            "isMultivalue": false,
            "isNegatible": false
        },
        {
            "entityId": "8f842244-b059-4107-b5b2-c257d9a1c230",
            "createdDateTime": "2019-02-13T17:23:08.2207961+00:00",
            "entityName": "UserPhone",
            "entityType": "LUIS",
            "isMultivalue": false,
            "isNegatible": false,
            "resolverType": "none"
        },
        {
            "entityId": "718df4cd-83ab-4cc0-8959-c83d91f20bd6",
            "createdDateTime": "2019-02-13T17:23:08.2207961+00:00",
            "entityName": "UserLocation",
            "entityType": "LUIS",
            "isMultivalue": false,
            "isNegatible": false,
            "resolverType": "none"
        }
    ],
    "packageId": "d0eda2ec-2aeb-4793-b366-c633f160f16a"
}