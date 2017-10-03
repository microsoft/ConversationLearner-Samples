var builder = require('botbuilder');

var BlisCallback = async function(defaultOutput, memoryManager) {

    var imageURL = null;
    switch (defaultOutput)
    { 
        case "food":
            imageURL = "http://lorempixel.com/200/200/food";
            break;
        case "cats":
            imageURL = "http://lorempixel.com/200/200/cats";
            break;
        case "nature":
            imageURL = "http://lorempixel.com/200/200/nature"
        case "sports":
            imageURL = "http://lorempixel.com/200/200/sports"
            break;
    }

    if (imageURL)
    {
        cardImages = [];
        cardImages.push(new builder.CardImage.create(null, imageURL));

        var card = new builder.HeroCard().images(cardImages);

        return new builder.Message().addAttachment(card);
    }

    return defaultOutput;
}

exports.BlisCallback = BlisCallback;