class Station.Views.ExoplanetsShow extends Backbone.View

  template: JST['exoplanets/show']

  render: ->
    $(@el).html(@template())
    this