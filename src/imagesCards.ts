export const createImagesCard = (title: string, urls: string[]) => {
    const images = urls.map(url => ({
        "type": "Image",
        "url": url
    }))

    return {
        "$schema": "http://adaptivecards.io/schemas/adaptive-card.json",
        "type": "AdaptiveCard",
        "version": "1.0",
        "body": [
            {
                "type": "TextBlock",
                "text": title,
                "size": "large"
            },
            {
                "type": "ImageSet",
                "images": images
            }
        ]
    }
}

export const staticCard = {
    "$schema": "http://adaptivecards.io/schemas/adaptive-card.json",
    "type": "AdaptiveCard",
    "version": "1.0",
    "body": [
        {
            "type": "ImageSet",
            "images": [
                {
                    "type": "Image",
                    "url": "https://avatars3.githubusercontent.com/u/1663673?v=4"
                },
                {
                    "type": "Image",
                    "url": "https://avatars1.githubusercontent.com/u/2856501?v=4"
                },
                {
                    "type": "Image",
                    "url": "http://adaptivecards.io/content/cats/1.png"
                },
                {
                    "type": "Image",
                    "url": "http://adaptivecards.io/content/cats/1.png"
                },
                {
                    "type": "Image",
                    "url": "http://adaptivecards.io/content/cats/1.png"
                },
                {
                    "type": "Image",
                    "url": "http://adaptivecards.io/content/cats/1.png"
                }
            ]
        }
    ]
}

export interface Issue {
    title: string
    avatarUrl: string
    url: string
}

export const createSearchIssuesCard = (issues: Issue[]) => {
    const containers = issues.map(({ title, avatarUrl, url }) => ({
        "type": "Container",
        "items": [
            {
                "type": "TextBlock",
                "text": title
            },
            {
                "type": "TextBlock",
                "text": url
            },
            {
                "type": "Image",
                "url": avatarUrl
            }
        ],
        "selectAction": {
            "type": "Action.OpenUrl",
            "title": title,
            "url": url
        }
    }))

    return {
        "$schema": "http://adaptivecards.io/schemas/adaptive-card.json",
        "type": "AdaptiveCard",
        "version": "1.0",
        "body": [
            ...containers,
            {
                "type": "Container",
                "items": [
                    {
                        "type": "TextBlock",
                        "text": "Click to show nested Card (Not Working)",
                        "wrap": true
                    }
                ],
                "selectAction": {
                    "type": "Action.ShowCard",
                    "title": "Show card action",
                    "card": {
                        "type": "AdaptiveCard",
                        "body": [
                            {
                                "type": "TextBlock",
                                "text": "What do you think?"
                            }
                        ],
                        "actions": [
                            {
                                "type": "Action.Submit",
                                "title": "Neat!"
                            }
                        ]
                    }
                }
            }
        ]
    }
}