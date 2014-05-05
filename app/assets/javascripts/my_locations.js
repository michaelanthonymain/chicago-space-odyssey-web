$(document).ready(function(event) {
    var item = new ListItem
    clickTarget = ''
});

function ListItem() {
    var self = this;
    this.$el = $('.list-item');
    this.$el.click(function(event) {
        self.changeColors(self);
        self.getPlanetData();
    });
};

ListItem.prototype.changeColors = function( self ) {
    clickTarget = event.currentTarget;
    self.removeHighlighterClass();
    self.addBackgroundClass();
    self.removeBackgroundClass();
    self.addHighlighterClass();
}

ListItem.prototype.addHighlighterClass = function() {
    $(clickTarget).addClass('highlighter');
}

ListItem.prototype.removeHighlighterClass = function() {
    $(clickTarget).siblings().removeClass('highlighter')
}

ListItem.prototype.addBackgroundClass = function() {
    $(clickTarget).siblings().addClass('background')
}

ListItem.prototype.removeBackgroundClass = function() {
    $(clickTarget).removeClass('background')
}

ListItem.prototype.getPlanetData = function() {
    var planetId = $(clickTarget).attr('planet-id')
    $.get('systems/show/'+ planetId, planetId, function(response) {
        });
}