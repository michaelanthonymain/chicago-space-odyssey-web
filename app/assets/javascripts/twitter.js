$(function() {
  $(".hashtag").click(function(e) {
    e.preventDefault();
    $("#twitter-popup").fadeToggle(150);
  });
  $(document).click(function(e) {
    if ($(e.target).is(".hashtag a")) {
      e.preventDefault();
      console.log(".hashtag")
    }
    var target = e.target;
    if (!$(target).is("#twitter-popup") && !$(target).is('.hashtag a')) {
      console.log("popup")
      $("#twitter-popup").fadeOut(150);
    };
  });
});
