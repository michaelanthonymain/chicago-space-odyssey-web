dimPage = ->
  $ "html"
    .prepend "<div class='hidden clone dimmer' />"
  $ ".dimmer"
    .fadeIn()

imagePopUp = ($el, $img) ->
  $win = $(window)
  $elBig = $el.clone().css "z-index", 0
    .css "height", "60%"
  $elBig.appendTo $ "html"

  $el.css "top", $img.position().top
    .css "left", $img.position().left
    .css "width", $img.width()

  newEdges =
    top: ($win.height() - $elBig.height()) / 2
    left: ($win.width() - $elBig.width()) / 2

  $img.css "visibility", "hidden"

  $el.animate
    width: $elBig.width()
    top: newEdges.top+"px"
    left: newEdges.left+"px"
  dimPage()

deleteClones = ->
  $ ".clone"
    .fadeOut("fast", ->
      @.remove()
    )
  $ ".collections img"
    .css "visibility", "visible"

enlarge = ($img) ->
  deleteClones()
  $clone = $img.clone()
  $clone.addClass "clone"
  $clone.prependTo $ "body"
  imagePopUp($clone, $img)

$ document
  .on "click", ".collections img", (event) ->
    enlarge($ @)

$ document
  .on "click", ".clone", (event) ->
    deleteClones()
