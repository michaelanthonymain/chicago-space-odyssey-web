window.Station =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new Station.Routers.Planets()
    Backbone.history.start()
    initMaps()

$(document).ready ->
  Station.initialize()
