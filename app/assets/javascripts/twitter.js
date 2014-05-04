$(function() {
  $(".hashtag").click(function(e) {
    e.preventDefault();
    $("#twitter-popup").fadeToggle(150);
  });
});
