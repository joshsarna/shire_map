/* global axios, jsGraphics */

var jg = new jsGraphics("Canvas");

axios.get("api/routes/" + app.$route.params.startId + "/" + app.$route.params.endId).then(function(response) {
  var xs = [];
  var ys = [];
  xs = response.data.route_xs;
  ys = response.data.route_ys;

  var latFloor = response.data.map.lat_floor;
  var latCeiling = response.data.map.lat_ceiling;
  var lngFloor = response.data.map.lng_floor;
  var lngCeiling = response.data.map.lng_ceiling;
  var imageHeight = response.data.map.height;
  var imageWidth = response.data.map.width;
  for (var i in xs) {
    xs[i] = Math.abs( xs[i] - (lngFloor) ) / Math.abs( lngFloor - lngCeiling ) * 807.0;
  }
  for (var i2 in ys) {
    ys[i2] = Math.abs( ys[i2] - (latCeiling) ) / ( latCeiling - latFloor ) * (807.0 / imageWidth) * imageHeight;
  }

  var jg = new jsGraphics("Canvas");
  jg.setColor("blue"); // change to lighter blue?
  jg.setStroke(5);
  jg.drawPolyline(xs, ys);
  jg.paint();
});