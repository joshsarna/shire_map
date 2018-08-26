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

var xs = [];
axios.get('api/routes/last').then(function(response) {
  console.log("got it");
  console.log(response.data.route_xs);
  xs = response.data.route_xs;
  console.log("xs: " + xs);
  for (var i in xs) {
    xs[i] = ( xs[i] - (-118.245188) ) / ( 118.245188 - 117.93321 ) * 775;
  }
  console.log("new xs: " + xs);
  var ys = [];
  axios.get('api/routes/last').then(function(response) {
    // console.log("got it");
    console.log(response.data.route_ys);
    ys = response.data.route_ys;
    console.log("ys: " + ys);
    for (var i in ys) {
      ys[i] = 525 - ( ys[i] - (34.064907) ) / ( 34.197343 - 34.064907 ) * 410;
    }
    console.log("new ys: " + ys);
    var jg = new jsGraphics("Canvas");
    jg.setColor("blue");
    jg.setStroke(3);
    jg.drawPolyline(xs, ys);
    jg.paint();
  });
});

console.log("image url: " + this.imageUrl);