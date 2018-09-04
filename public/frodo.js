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
  495,502,508,510,511,513,516,511,506,508,513,517,521,522,525,526,532,532,535,538,541,545,550,553, //Morannon
  547,541,539,538,538,538,540,539,538,538,538,539,538,539,540,548,551,553,558,557,555,559,559,556,553,555,554,555,551,551,555,559,561,565,573,577,581,582,583,586,586,589,584 //Orodruin
];
var ys = [
  253,263,266,264,263,265,269,266,263,266,269,272,271,268,266,267,260,254,254,259,262, //Bree
  260,256,253,252,249,252,253,255, //Weathertop
  257,263,266,268,268,268,266,263,259,255,251,253, //LastBridge
  248,245,247,247,251,256,259,259,257,254, //Rivendell
  257,259,268,272,274,277,280,284,285,288,290,293,298, //Hollin
  302,308,313,314,314,313,318,320,325,330,334,334,330,323,328,329,326,333,332,339,345, //Lorien
  355,354,356,360,364,366,369,374,377,380,381,383,386,390,394,398,399,396,397,401,404,408,411,414,418,423,428,434,440,446,458,467, //Rauros
  467,462,458,455,450,450,451,456,455,448,447,453,453,457,457,460,462,466,467,465,463,464,464,464, //Morannon
  466,468,472,474,475,479,480,481,484,488,492,493,497,501,504,510,510,510,512,505,502,503,502,500,498,496,495,491,488,487,488,488,487,486,487,487,487,487,492,493,497,504,506 //Orodruin
];

for (var i = 0; i < xs.length; i++) {
  xs[i] -= 3;
}
for (var i2 = 0; i2 < ys.length; i2++) {
  ys[i2] -= 91;
}

jg.setColor("blue");
jg.setStroke(3);
jg.drawPolyline(xs, ys);
jg.paint();