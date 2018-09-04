/* global jsGraphics */

var jg = new jsGraphics("Canvas");

var xs = [
  213,208,210,224,228,230,232,234,238,243,249,253,255,255,259,255,254,255,263,264,271, //Bree
  278,278,288,295,300,302,305,309, //Weathertop
  301,300,302,308,316,325,332,342,347,350,350,359, //Last Bridge
  361,366,372,375,373,372,390,393,397,399, //Rivendell
  397,393,397,394,395,393,392,393,390,391,387,386,384, //Hollin
  383,383,386,390,394,399,386,379,372,370,372,377,388,389,389,401,402,405,414,422,431, //Lorien
  433,438,442,444,445,448,453,459,463,469,472,473,472,470,469,472,478,484,486,488,485,481,479,480,486,488,488,485,483,484,488,491, //Rauros
];
var ys = [
  253,263,266,264,263,265,269,266,263,266,269,272,271,268,266,267,260,254,254,259,262, //Bree
  260,256,253,252,249,252,253,255, //Weathertop
  257,263,266,268,268,268,266,263,259,255,251,253, //LastBridge
  248,245,247,247,251,256,259,259,257,254, //Rivendell
  257,259,268,272,274,277,280,284,285,288,290,293,298, //Hollin
  302,308,313,314,314,313,318,320,325,330,334,334,330,323,328,329,326,333,332,339,345, //Lorien
  355,354,356,360,364,366,369,374,377,380,381,383,386,390,394,398,399,396,397,401,404,408,411,414,418,423,428,434,440,446,458,467, //Rauros
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