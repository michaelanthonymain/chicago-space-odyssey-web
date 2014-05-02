window.Station =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new Station.Routers.Exoplanets()
    Backbone.history.start()
        pushState: true

$(document).ready ->
  Station.initialize()
