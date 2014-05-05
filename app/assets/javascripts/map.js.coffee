infoWindow = null
bounds = new google.maps.LatLngBounds()

setMarkers = (map,markers) ->
  for i in [markers.length-1..0]
    exoPlanets = markers[i]
    planetLatLng = new google.maps.LatLng exoPlanets[1], exoPlanets[2]
    marker = new google.maps.Marker
      position: planetLatLng
      map: map
      title: exoPlanets[0]
      zIndex: exoPlanets[3]
      html: exoPlanets[4]
    google.maps.event.addListener marker, "click", ->
      infoWindow.setContent @.html
      infoWindow.open map, @
    bounds.extend planetLatLng

initMaps = ->
  mapOptions =
    center: new google.maps.LatLng 41.883217, -87.628670 # Chicago
  map = new google.maps.Map document.getElementById("map"), mapOptions

  setMarkers map,exoPlanets

  infoWindow = new google.maps.InfoWindow
    content: 'Loading...'
  map.fitBounds bounds

$ ->
  if ($("#map").length) > 0
    initMaps()
