'use strict';

const templateDocument = function() {
    return `
        <document>
            <confettiTemplate title="Custom Title from JS Template"></confettiTemplate>
        </document>`
}

App.onLaunch = function(options) {
    var template = templateDocument();
    var templateParser = new DOMParser();
    var parsedTemplate = templateParser.parseFromString(template, "application/xml");
    navigationDocument.pushDocument(parsedTemplate);
}
