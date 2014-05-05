$(document).ready(function(event) {
  var hashtag = new TwitterHashtag;
});

function TwitterHashtag() {
  this.$el = $('.hashtag')
  this.showTwitterFeed();
  this.hideTwitterFeed();
}

TwitterHashtag.prototype.showTwitterFeed = function() {
    this.$el.click(function(event) {
      event.preventDefault();
      $("#twitter-popup").fadeToggle(150);
    });
}

TwitterHashtag.prototype.hideTwitterFeed = function() {
    $(document).click(function(event) {
      if($(event.target).is(".hashtag a")) {
        event.preventDefault;
      }

      if(!$(event.target).is("#twitter-popup") && !$(event.target).is('.hashtag a')) {
        $("#twitter-popup").fadeOut(150);
      }
    });
}
