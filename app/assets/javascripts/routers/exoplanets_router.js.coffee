class Station.Routers.Exoplanets extends Backbone.Router

    routes:
        'show': 'show'

    show: ->
       view = new Station.Views.ExoplanetsShow()
       $('#map').html(view.render().el)
       alert "Show"