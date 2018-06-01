'use strict';

const templateDocument = function() {
    return `
        <document>
            <confettiTemplate>
                <text>Hello ConfettiTemplate</text>
            </confettiTemplate>
        </document>`
}

App.onLaunch = function(options) {
    var template = templateDocument();
    var templateParser = new DOMParser();
    var parsedTemplate = templateParser.parseFromString(template, "application/xml");
    navigationDocument.pushDocument(parsedTemplate);
}
