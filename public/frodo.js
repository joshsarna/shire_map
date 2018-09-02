/* global jsGraphics */

var jg = new jsGraphics("Canvas");

var xs = [
  213,208,210,224,228,230,232,234,238,243,249,253,255,255,259,255,254,255,263,264,271, //Bree
  278,278,288,295,300,302,305,309, //Weathertop
  301,300,302,308,316,325,332,342,347,350,350,359, //Last Bridge
  361,366,372,375,373,372,390,393,397,399, //Rivendell
];
var ys = [
  253,263,266,264,263,265,269,266,263,266,269,272,271,268,266,267,260,254,254,259,262, //Bree
  260,256,253,252,249,252,253,255, //Weathertop
  257,263,266,268,268,268,266,263,259,255,251,253, //LastBridge
  248,245,247,247,251,256,259,259,257,254, //Rivendell
];

for (var i = 0; i < xs.length; i++) {
  xs[i] -= 3;
}
for (var i2 = 0; i2 < ys.length; i2++) {
  ys[i2] -= 91;
}
// xs = response.data.route_xs;
// ys = response.data.route_ys;

// var latFloor = response.data.map.lat_floor;
// var latCeiling = response.data.map.lat_ceiling;
// var lngFloor = response.data.map.lng_floor;
// var lngCeiling = response.data.map.lng_ceiling;
// var imageHeight = response.data.map.height;
// var imageWidth = response.data.map.width;
// for (var i in xs) {
//   xs[i] = Math.abs( xs[i] - (lngFloor) ) / Math.abs( lngFloor - lngCeiling ) * 807.0;
// }
// for (var i2 in ys) {
//   ys[i2] = Math.abs( ys[i2] - (latCeiling) ) / ( latCeiling - latFloor ) * (807.0 / imageWidth) * imageHeight;
// }

// var jg = new jsGraphics("Canvas");
jg.setColor("blue"); // change to lighter blue?
jg.setStroke(3);
jg.drawPolyline(xs, ys);
jg.paint();