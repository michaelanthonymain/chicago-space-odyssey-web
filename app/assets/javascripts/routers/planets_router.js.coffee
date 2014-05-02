class Station.Routers.Planets extends Backbone.Router

    routes:
        'planets': 'index'
        'planets/:id': 'show'

    initialize: ->
      @collection = new Station.Collections.Planets()
      @collection.fetch(reset: true)

    index: ->
      view = new Station.Views.PlanetsIndex(collection: @collection)
      $('#map').hide()
      $('#container').html(view.render().el)



    show: (id) ->
      @model = @collection.get(id)
       # view = new Station.Views.PlanetsShow(model: @model)
       # $('#container').html(view.render().el)