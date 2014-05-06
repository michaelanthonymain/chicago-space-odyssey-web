enlargeImage = (self) ->
  $ self
    .css "visibility", "hidden"

$ ->
  $ ".collections li img"
    .click (->
      console.log @
      enlargeImage @
    ).bind @
