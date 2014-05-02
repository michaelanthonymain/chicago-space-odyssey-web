var infoWindow = null
var bounds = new google.maps.LatLngBounds();

function initMaps() {
  var mapOptions = {
    center: new google.maps.LatLng(41.883217, -87.628670)// Chicago
  }
  var map = new google.maps.Map(document.getElementById("map"),
      mapOptions);
  setMarkers(map,exoPlanets);
  infoWindow = new google.maps.InfoWindow({
    content: 'Loading...'
  })
  map.fitBounds(bounds);
}

function setMarkers(map,markers) {
  for (var i = 0; i < markers.length; i++) {
    var exoPlanets = markers[i];
    var planetLatLng = new google.maps.LatLng(exoPlanets[1], exoPlanets[2]);
    var marker = new google.maps.Marker({
      position: planetLatLng,
      map: map,
      title: exoPlanets[0],
      zIndex: exoPlanets[3],
      html: exoPlanets[4]//,
      // icon: planetIcon
    });

    google.maps.event.addListener(marker, "click", function() {
      infoWindow.setContent(this.html);
      infoWindow.open(map, this);
    });
    bounds.extend(planetLatLng);
  }
}
