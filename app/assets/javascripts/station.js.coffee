window.Station =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new Station.Routers.Planets()
    Backbone.history.start()

$(document).ready ->
  Station.initialize()
