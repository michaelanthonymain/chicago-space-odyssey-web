centerOnPage = ($el) ->
  $win = $(window)
  newEdges =
    top: ($win.height() - $el.height()) / 2
    left: ($win.width() - $el.width()) / 2
  $el.css "top", newEdges.top+"px"
    .css "left", newEdges.left+"px"

deleteClones = ->
  $ ".clone"
    .remove()

enlarge = ($img) ->
  deleteClones()
  $clone = $img.clone()
  $clone.addClass "clone"
  $clone.prependTo $ "body"
  centerOnPage($clone)

$ document
  .on "click", ".collections img", (event) ->
    enlarge($ @)

$ document
  .on "click", ".clone", (event) ->
    deleteClones()
