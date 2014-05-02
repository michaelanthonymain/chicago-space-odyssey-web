class Station.Views.PlanetsIndex extends Backbone.View

  template: JST['planets/index']

  initialize: ->
    @collection.on('reset', @render, this)

  render: ->
    $(@el).html(@template(planets: @collection))
    this