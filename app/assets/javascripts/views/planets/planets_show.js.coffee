class Station.Views.PlanetsShow extends Backbone.View

  template: JST['planets/show']

  initialize: ->
    @collection.on('reset', @render, this)

  render: ->
    $(@el).html(@template(planets: @collection))
    this