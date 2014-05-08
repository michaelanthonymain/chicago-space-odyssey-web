dimPage = ->
  $ "html"
    .prepend "<div class='hidden medium dimmer' />"
  $ ".dimmer"
    .fadeIn()

setMediumPos = ($popup) ->
  $win = $(window)
  $popup.css "top", (($win.height() - $popup.height()) / 2) + "px"
    .css "left", (($win.width() - $popup.width()) / 2) + "px"

popup = ($img) ->
  $img.css "visibility", "hidden"
  $img.siblings().children()
    .fadeIn()
  dimPage()

deletePopups = ->
  $ ".medium"
    .fadeOut("fast", ->
      $ ".medium"
        .addClass "hidden"
      $ ".dimmer"
        .remove()
    )
  $ ".collections img"
    .css "visibility", "visible"

enlarge = ($img) ->
  deletePopups()
  console.log($img.siblings().children())
  popup($img)
  setMediumPos($img.siblings().children())

$ document
  .on "click", ".collections img", (event) ->
    enlarge($ @)

$ document
  .on "click", ".medium", (event) ->
    deletePopups()
