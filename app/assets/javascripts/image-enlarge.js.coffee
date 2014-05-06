enlarge = (img) ->
  $clone = $(img).clone()
  $clone.addClass "clone"
  $clone.css "top", $(img).position.top + "px"
    .css "left", $(img).position.left + "px"
      .css
  $clone.appendTo $(img).parent()
  console.log "doing things"

$ document
  .on "click", ".collections img", (event) ->
    enlarge(@)
