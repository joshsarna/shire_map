/* global axios, jsGraphics */

// Call jsGraphics() with no parameters if drawing within the entire document 
var jg = new jsGraphics("Canvas");    // Use the "Canvas" div for drawing 
// jg.setColor("maroon");
// jg.fillEllipse(450, -5, 40, 70); 
// jg.setColor("blue");
// jg.setStroke(3);
// jg.drawPolyline(new Array(100, 150, 200), new Array(200, 250, 200));
// jg.setColor("green");
// jg.drawRect(100,40,200,18);
// jg.setStroke(Stroke.DOTTED); 
// jg.drawRect(-20,0,32,50);
// jg.drawEllipse(250,10,100,100);
// jg.paint();
// jg.setColor("blue");
// jg.drawPolyline(new Array(90, 640, 90), new Array(0, 25, 90));

axios.get('api/routes/last').then(function(response) {
  var xs = [];
  console.log("got it");
  console.log(response.data.route_xs);
  xs = response.data.route_xs;
  console.log("xs: " + xs);
  var latFloor = response.data.map.lat_floor;
  var latCeiling = response.data.map.lat_ceiling;
  var lngFloor = response.data.map.lng_floor;
  var lngCeiling = response.data.map.lng_ceiling;
  var imageHeight = response.data.map.height * 0.96;
  var imageWidth = response.data.map.width * 0.96;
  for (var i in xs) {
    xs[i] = Math.abs( xs[i] - (lngFloor) ) / Math.abs( lngFloor - lngCeiling ) * imageWidth;
  }
  console.log("new xs: " + xs);
  var ys = [];
  ys = response.data.route_ys;
  console.log("ys: " + ys);
  for (var i2 in ys) {
    ys[i2] = 95 + Math.abs( ys[i2] - (latCeiling) ) / ( latCeiling - latFloor ) * imageHeight;
  }
  console.log("new ys: " + ys);
  var jg = new jsGraphics("Canvas");
  jg.setColor("blue");
  jg.setStroke(3);
  jg.drawPolyline(xs, ys);
  jg.paint();
});

console.log("image url: " + this.imageUrl);

// change hardcoded things to be variables; variables can be hardcoded for now