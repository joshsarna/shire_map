locations = Location.all
locations.each do |location|
  location.destroy
end

maps = Map.all
maps.each do |map|
  map.destroy
end

locations = Location.all
locations.each do |location|
  location.destroy
end

segments = RouteSegment.all
segments.each do |segment|
  segment.destroy
end

synonyms = Synonym.all
synonyms.each do |synonym|
  synonym.destroy
end

warnings = RouteWarning.all
warnings.each do |warning|
  warning.destroy
end

Location.create!([
  {name: "Maggot's Lane/The Causeway", lng: "-117.972909", lat: "34.117647", location_type: "intersection"},
  {name: "Minas Morgul", lng: "-112.519287", lat: "32.604607", location_type: "site"},
  {name: "Overhill", lng: "490.0", lat: "-239.0", location_type: "region"},
  {name: "Rushock Bog", lng: "319.0", lat: "-313.0", location_type: "region"},
  {name: "Greenfields", lng: "631.0", lat: "-114.0", location_type: "region"},
  {name: "Bindbole Wood", lng: "437.0", lat: "-183.0", location_type: "region"},
  {name: "Brockenborings", lng: "618.0", lat: "-194.0", location_type: "region"},
  {name: "The Hill", lng: "448.0", lat: "-282.0", location_type: "region"},
  {name: "Bridgefields", lng: "746.0", lat: "-307.0", location_type: "region"},
  {name: "Frogmorton", lng: "617.0", lat: "-400.0", location_type: "region"},
  {name: "Hobbiton", lng: "468.0", lat: "-385.0", location_type: "region"},
  {name: "Budgeford", lng: "738.0", lat: "-394.0", location_type: "region"},
  {name: "Stock", lng: "810.0", lat: "-437.0", location_type: "region"},
  {name: "Bywater", lng: "538.0", lat: "-428.0", location_type: "region"},
  {name: "Little Delving", lng: "215.0", lat: "-433.0", location_type: "region"},
  {name: "Michel Delving", lng: "284.0", lat: "-528.0", location_type: "region"},
  {name: "Waymeet", lng: "381.0", lat: "-470.0", location_type: "region"},
  {name: "Tuckborough", lng: "458.0", lat: "-510.0", location_type: "region"},
  {name: "Woodhall", lng: "727.0", lat: "-504.0", location_type: "region"},
  {name: "The Marish", lng: "820.0", lat: "-553.0", location_type: "region"},
  {name: "Shire Homesteads", lng: "304.0", lat: "-675.0", location_type: "region"},
  {name: "Scary", lng: "694.0", lat: "-240.0", location_type: "region"},
  {name: "East Road/South to Longbottom", lng: "-118.186241", lat: "34.137864", location_type: "intersection"},
  {name: "East Road/North to Little Delving", lng: "-118.192256", lat: "34.138157", location_type: "intersection"},
  {name: "?Tuckborough Road/?Woodhall Road", lng: "-118.03346", lat: "34.118819", location_type: "intersection"},
  {name: "Bagshot Row 3", lng: "-118.1381833", lat: "34.15413611", location_type: "site"},
  {name: "Bagshot Row 2", lng: "-118.1377028", lat: "34.154125", location_type: "site"},
  {name: "Bagshot Row 1", lng: "-118.1370528", lat: "34.15413611", location_type: "site"},
  {name: "Bag End", lng: "-118.1370833", lat: "34.15555", location_type: "site"},
  {name: "Bywater Bridge", lng: "-118.1369972", lat: "34.15182222", location_type: "site"},
  {name: "Bywater Road/Hill Lane", lng: "-118.1369111", lat: "34.15126944", location_type: "intersection"},
  {name: "The Green Dragon", lng: "-118.1243722", lat: "34.14472222", location_type: "site"},
  {name: "?Woodhall Road/Unmarked Trail", lng: "-118.027846", lat: "34.118526", location_type: "intersection"},
  {name: "High Pass", lng: "-114.709508", lat: "34.100695", location_type: "site"},
  {name: "?Tuckborough Road/The Causeway", lng: "-117.981731", lat: "34.132883", location_type: "intersection"},
  {name: "Isengard", lng: "-115.741265", lat: "33.137305", location_type: "site"},
  {name: "Nindalf", lng: "-113.225226", lat: "32.831287", location_type: "site"},
  {name: "Last Bridge", lng: "-115.886073", lat: "34.061026", location_type: "site"},
  {name: "Harlond", lng: "-120.284616", lat: "33.879682", location_type: "site"},
  {name: "Midgewater Marshes", lng: "-117.09884", lat: "34.032691", location_type: "site"},
  {name: "Stocktower", lng: "-117.980528", lat: "34.129953", location_type: "site"},
  {name: "The Golden Perch", lng: "-117.98133", lat: "34.134641", location_type: "site"},
  {name: "Ferry Lane/The Causeway", lng: "-117.97331", lat: "34.125265", location_type: "intersection"},
  {name: "Sarn Ford", lng: "-117.732375", lat: "33.817345", location_type: "site"},
  {name: "Mathom-House", lng: "-118.211706", lat: "34.154614", location_type: "site"},
  {name: "Tharbad", lng: "-116.827325", lat: "33.601999", location_type: "site"},
  {name: "Buckleberry Ferry", lng: "-117.968899", lat: "34.126144", location_type: "site"},
  {name: "East Road/The Causeway", lng: "-117.990954", lat: "34.145482", location_type: "intersection"},
  {name: "Elostirion", lng: "-119.234758", lat: "33.976021", location_type: "site"},
  {name: "Forlond", lng: "-120.863848", lat: "33.970354", location_type: "site"},
  {name: "Dol Guldur", lng: "-113.605347", lat: "33.56233", location_type: "site"},
  {name: "Bamfurlong", lng: "-117.974112", lat: "34.117647", location_type: "site"},
  {name: "Elven Campsite", lng: "-118.027846", lat: "34.116475", location_type: "site"},
  {name: "East Road/North to Scary", lng: "-118.023836", lat: "34.145189", location_type: "intersection"},
  {name: "East Road/North to Oatbarton", lng: "-118.081981", lat: "34.14138", location_type: "intersection"},
  {name: "Brandywine Bridge", lng: "-117.985741", lat: "34.146068", location_type: "site"},
  {name: "Ford of Bruinen", lng: "-115.252538", lat: "34.032691", location_type: "site"},
  {name: "Bagshot Row/Hill Lane", lng: "-118.135314", lat: "34.154272", location_type: "intersection"},
  {name: "East Road/Bywater Road", lng: "-118.120076", lat: "34.140208", location_type: "intersection"},
  {name: "Weathertop", lng: "-116.682517", lat: "34.038358", location_type: "site"},
  {name: "The Lonely Mountain", lng: "-112.501186", lat: "34.361377", location_type: "site"},
  {name: "Minas Tirith", lng: "-112.808903", lat: "32.59894", location_type: "site"},
  {name: "Barad-dur", lng: "-111.48753", lat: "32.729281", location_type: "site"},
  {name: "Orodruin", lng: "-111.885752", lat: "32.700946", location_type: "site"},
  {name: "The Long Lake", lng: "-112.501186", lat: "34.276372", location_type: "site"},
  {name: "Dead Marshes", lng: "-112.899408", lat: "32.904958", location_type: "site"},
  {name: "Moria Gate", lng: "-115.28874", lat: "33.647335", location_type: "site"},
  {name: "Old Ford", lng: "-114.094074", lat: "34.100695", location_type: "site"},
  {name: "Bree", lng: "-117.370355", lat: "34.010023", location_type: "site"},
  {name: "Fords of Isen", lng: "-115.741265", lat: "33.029632", location_type: "site"},
  {name: "Helm's Deep", lng: "-115.487851", lat: "32.933293", location_type: "site"},
  {name: "The Crossroads", lng: "-112.645994", lat: "32.610274", location_type: "site"},
  {name: "Morannon", lng: "-112.39258", lat: "32.893624", location_type: "site"},
  {name: "Crossings of Poros", lng: "-112.682196", lat: "32.230585", location_type: "site"},
  {name: "Dome of Stars", lng: "-112.772701", lat: "32.604607", location_type: "site"},
  {name: "Gladden Fields", lng: "-113.949266", lat: "33.851347", location_type: "site"},
  {name: "Esgaroth", lng: "-112.483085", lat: "34.304707", location_type: "site"},
  {name: "Lothlorien", lng: "-114.619003", lat: "33.522661", location_type: "site"},
  {name: "Far Downs", lng: "-118.872738", lat: "33.981688", location_type: "site"},
  {name: "Barrow Downs", lng: "-117.551365", lat: "33.976021", location_type: "site"},
  {name: "Fornost", lng: "-117.569466", lat: "34.248037", location_type: "site"},
  {name: "Rivendell", lng: "-115.10773", lat: "34.061026", location_type: "site"},
  {name: "Mithlond", lng: "-119.542475", lat: "34.027024", location_type: "site"},
  {name: "Edoras", lng: "-114.981023", lat: "32.848288", location_type: "site"},
  {name: "Osgiliath", lng: "-112.736499", lat: "32.587606", location_type: "site"},
  {name: "Pelargir", lng: "-113.170923", lat: "32.389261", location_type: "site"},
  {name: "Erech", lng: "-114.962922", lat: "32.791618", location_type: "site"},
  {name: "?Sarn Road/North-South Road", lng: "-117.388456", lat: "33.90235", location_type: "intersection"},
  {name: "East Road/?Sarn Road", lng: "-118.510718", lat: "34.100695", location_type: "intersection"},
  {name: "Great West Road/?Helm's Road", lng: "-115.433548", lat: "33.074968", location_type: "intersection"},
  {name: "Great West Road/?Road of Lossanarch", lng: "-112.917509", lat: "32.700946", location_type: "intersection"}
])
Map.create!([
  {lat_floor: "33.9955302", lat_ceiling: "34.0245158", lng_floor: "-117.387304", lng_ceiling: "-117.353406", name: "Bree", image_url: "https://vignette.wikia.nocookie.net/lotr/images/f/f7/Breemap3.jpg/revision/latest?cb=20160503181050", level: "quaternary", height: nil, width: nil},
  {lat_floor: "33.9882839", lat_ceiling: "34.0317621", lng_floor: "-117.396217", lng_ceiling: "-117.344493", name: "Bree-land", image_url: "https://ahobbitsjourney.files.wordpress.com/2014/06/bree-land-map-archet-combe-staddle.jpg", level: "tertiary", height: nil, width: nil},
  {lat_floor: "0.0", lat_ceiling: "0.0", lng_floor: "0.0", lng_ceiling: "0.0", name: "Osgiliath", image_url: "https://i.pinimg.com/originals/b8/93/6a/b8936ae6eedd5c26d4f242d37a2081b9.jpg", level: "tertiary", height: nil, width: nil},
  {lat_floor: "0.0", lat_ceiling: "0.0", lng_floor: "0.0", lng_ceiling: "0.0", name: "Eriador", image_url: "https://vignette.wikia.nocookie.net/lotr/images/f/f7/Eriador-map.jpg/revision/latest?cb=20160503175452", level: "secondary", height: nil, width: nil},
  {lat_floor: "0.0", lat_ceiling: "0.0", lng_floor: "0.0", lng_ceiling: "0.0", name: "Wilderland", image_url: "https://vignette.wikia.nocookie.net/lotr/images/7/7f/MapOfWilderland.jpg/revision/latest?cb=20131225175225", level: "secondary", height: nil, width: nil},
  {lat_floor: "34.064907", lat_ceiling: "34.197343", lng_floor: "-118.245188", lng_ceiling: "-117.93321", name: "A Part of the Shire", image_url: "http://corecanvas.s3.amazonaws.com/theonering-0188db0e/gallery/original/shire_map.jpg", level: "tertiary", height: 478, width: 807},
  {lat_floor: "31.703554", lat_ceiling: "34.899742", lng_floor: "-121.877504", lng_ceiling: "-108.156946", name: "Middle Earth", image_url: "http://donsmaps.com/images29/middleearthlargelargerstill.jpg", level: "primary", height: 605, width: 807}
])
RouteSegment.create!([
  {nw_end: Location.find_by(name: "Bag End").id, se_end: Location.find_by(name: "Bagshot Row/Hill Lane").id, distance: "0.0451090841605882", time: 2, description: nil, road: "Hill Lane"}, # 21 34
  {nw_end: Location.find_by(name: "Bywater Road/Hill Lane").id, se_end: Location.find_by(name: "The Green Dragon").id, distance: "0.28526714884356", time: 17, description: nil, road: "Bywater Road"}, # 35 25
  {nw_end: Location.find_by(name: "Bagshot Row 1").id, se_end: Location.find_by(name: "Bagshot Row/Hill Lane").id, distance: "0.0337117138131401", time: 2, description: nil, road: "Bagshot Row"}, # 26 34
  {nw_end: Location.find_by(name: "Bagshot Row/Hill Lane").id, se_end: Location.find_by(name: "Bywater Bridge").id, distance: "0.0651634067494387", time: 3, description: nil, road: "Hill Lane"}, # 34 33
  {nw_end: Location.find_by(name: "Bagshot Row 3").id, se_end: Location.find_by(name: "Bagshot Row 2").id, distance: "0.00927910855352394", time: 1, description: nil, road: "Bagshot Row"}, # 28 27
  {nw_end: Location.find_by(name: "The Green Dragon").id, se_end: Location.find_by(name: "East Road/Bywater Road").id, distance: "0.133084855652394", time: 7, description: nil, road: "Bywater Road"}, # 25 36
  {nw_end: Location.find_by(name: "East Road/South to Longbottom").id, se_end: Location.find_by(name: "East Road/Bywater Road").id, distance: "1.27839209339889", time: 76, description: nil, road: "East Road"}, # 38 36
  {nw_end: Location.find_by(name: "Bagshot Row 2").id, se_end: Location.find_by(name: "Bagshot Row 1").id, distance: "0.0125502145551738", time: 1, description: nil, road: "Bagshot Row"}, # 27 26
  {nw_end: Location.find_by(name: "Bywater Bridge").id, se_end: Location.find_by(name: "Bywater Road/Hill Lane").id, distance: "0.012853363285835", time: 1, description: nil, road: "Hill Lane"}, # 33 35
  {nw_end: Location.find_by(name: "East Road/Bywater Road").id, se_end: Location.find_by(name: "East Road/North to Oatbarton").id, distance: "0.735882208263929", time: 44, description: nil, road: "East Road"}, # 36 47
  {nw_end: Location.find_by(name: "Tharbad").id, se_end: Location.find_by(name: "Fords of Isen").id, distance: "24.7730992587722", time: 1486, description: nil, road: "North-South Road"}, # 64 70
  {nw_end: Location.find_by(name: "East Road/North to Oatbarton").id, se_end: Location.find_by(name: "East Road/North to Scary").id, distance: "1.12586171627523", time: 67, description: nil, road: "East Road"}, # 47 42
  {nw_end: Location.find_by(name: "Fords of Isen").id, se_end: Location.find_by(name: "Great West Road/?Helm's Road").id, distance: "6.03144135870598", time: 361, description: nil, road: "Great West Road"}, # 70 92
  {nw_end: Location.find_by(name: "Great West Road/?Helm's Road").id, se_end: Location.find_by(name: "Helm's Deep").id, distance: "3.43067608618281", time: 205, description: nil, road: "?Helm's Road"}, # 92 71
  {nw_end: Location.find_by(name: "Great West Road/?Helm's Road").id, se_end: Location.find_by(name: "Edoras").id, distance: "10.1797171814538", time: 610, description: nil, road: "Great West Road"}, # 92 86
  {nw_end: Location.find_by(name: "The Golden Perch").id, se_end: Location.find_by(name: "?Tuckborough Road/The Causeway").id, distance: "0.0412667354025934", time: 2, description: nil, road: "The Causeway"}, # 32 44
  {nw_end: Location.find_by(name: "?Tuckborough Road/The Causeway").id, se_end: Location.find_by(name: "Stocktower").id, distance: "0.0714369928872643", time: 4, description: nil, road: "The Causeway"}, # 44 24
  {nw_end: Location.find_by(name: "Edoras").id, se_end: Location.find_by(name: "Great West Road/?Road of Lossanarch").id, distance: "39.9786802918095", time: 2398, description: nil, road: "Great West Road"}, # 86 93
  {nw_end: Location.find_by(name: "Stocktower").id, se_end: Location.find_by(name: "Ferry Lane/The Causeway").id, distance: "0.176347122662142", time: 10, description: nil, road: "The Causeway"}, # 24 45
  {nw_end: Location.find_by(name: "Ferry Lane/The Causeway").id, se_end: Location.find_by(name: "Maggot's Lane/The Causeway").id, distance: "0.175818715988043", time: 10, description: nil, road: "The Causeway"}, # 45 37
  {nw_end: Location.find_by(name: "Ferry Lane/The Causeway").id, se_end: Location.find_by(name: "Buckleberry Ferry").id, distance: "0.087528672029317", time: 5, description: nil, road: "Ferry Lane"}, # 45 23
  {nw_end: Location.find_by(name: "East Road/North to Scary").id, se_end: Location.find_by(name: "East Road/The Causeway").id, distance: "0.634790077513064", time: 38, description: nil, road: "East Road"}, # 42 43
  {nw_end: Location.find_by(name: "East Road/The Causeway").id, se_end: Location.find_by(name: "The Golden Perch").id, distance: "0.311440698359342", time: 18, description: nil, road: "The Causeway"}, # 43 32
  {nw_end: Location.find_by(name: "East Road/The Causeway").id, se_end: Location.find_by(name: "Brandywine Bridge").id, distance: "0.101534760031209", time: 6, description: nil, road: "East Road"}, # 43 31
  {nw_end: Location.find_by(name: "Osgiliath").id, se_end: Location.find_by(name: "The Crossroads").id, distance: "1.82361113026772", time: 109, description: nil, road: "Great West Road"}, # 87 72
  {nw_end: Location.find_by(name: "The Crossroads").id, se_end: Location.find_by(name: "Minas Morgul").id, distance: "2.44943951138789", time: 146, description: nil, road: "Great West Road"}, # 72 51
  {nw_end: Location.find_by(name: "Morannon").id, se_end: Location.find_by(name: "The Crossroads").id, distance: "8.16170558090823", time: 489, description: nil, road: "Harad Road"}, # 73 72
  {nw_end: Location.find_by(name: "Erech").id, se_end: Location.find_by(name: "Pelargir").id, distance: "35.8151321115961", time: 2148, description: nil, road: "?Small West Road"}, # 89 88
  {nw_end: Location.find_by(name: "Rivendell").id, se_end: Location.find_by(name: "High Pass").id, distance: "7.74149962117883", time: 464, description: nil, road: "East Road"}, # 84 52
  {nw_end: Location.find_by(name: "High Pass").id, se_end: Location.find_by(name: "Old Ford").id, distance: "11.880337936", time: 712, description: nil, road: "Old Forest Road"}, # 52 59
  {nw_end: Location.find_by(name: "Great West Road/?Road of Lossanarch").id, se_end: Location.find_by(name: "The Crossroads").id, distance: "5.64288965038169", time: 338, description: nil, road: "Great West Road"}, # 93 72
  {nw_end: Location.find_by(name: "East Road/North to Little Delving").id, se_end: Location.find_by(name: "East Road/South to Longbottom").id, distance: "0.116309923531378", time: 6, description: nil, road: "East Road"}, # 39 38
  {nw_end: Location.find_by(name: "Mathom-House").id, se_end: Location.find_by(name: "East Road/North to Little Delving").id, distance: "0.533810729538892", time: 32, description: nil, road: "East Road"}, # 22 39
  {nw_end: Location.find_by(name: "Bamfurlong").id, se_end: Location.find_by(name: "Maggot's Lane/The Causeway").id, distance: "0.023222712", time: 1, description: nil, road: "Maggot's Lane"}, # 29 37
  {nw_end: Location.find_by(name: "?Tuckborough Road/?Woodhall Road").id, se_end: Location.find_by(name: "?Tuckborough Road/The Causeway").id, distance: "1.04990888024116", time: 62, description: nil, road: "?Tuckborough Road"}, # 40 44
  {nw_end: Location.find_by(name: "?Tuckborough Road/?Woodhall Road").id, se_end: Location.find_by(name: "?Woodhall Road/Unmarked Trail").id, distance: "0.108583019227206", time: 6, description: nil, road: "?Woodhall Road"}, # 40 41
  {nw_end: Location.find_by(name: "?Woodhall Road/Unmarked Trail").id, se_end: Location.find_by(name: "Elven Campsite").id, distance: "0.047289907", time: 2, description: nil, road: "Unmarked Trail"}, # 41 30
  {nw_end: Location.find_by(name: "The Crossroads").id, se_end: Location.find_by(name: "Crossings of Poros").id, distance: "8.78233821598651", time: 526, description: nil, road: "Harad Road"}, # 72 74
  {nw_end: Location.find_by(name: "Minas Tirith").id, se_end: Location.find_by(name: "Dome of Stars").id, distance: "0.710953721958249", time: 42, description: nil, road: "Great West Road"}, # 50 75
  {nw_end: Location.find_by(name: "Dome of Stars").id, se_end: Location.find_by(name: "Osgiliath").id, distance: "0.801273911753119", time: 48, description: nil, road: "Great West Road"}, # 75 87
  {nw_end: Location.find_by(name: "Old Ford").id, se_end: Location.find_by(name: "Gladden Fields").id, distance: "6.39277779762653", time: 383, description: nil, road: "Anduin"}, # 59 76
  {nw_end: Location.find_by(name: "Pelargir").id, se_end: Location.find_by(name: "Crossings of Poros").id, distance: "10.1189396017148", time: 607, description: nil, road: "?Small West Road"}, # 88 74
  {nw_end: Location.find_by(name: "Brandywine Bridge").id, se_end: Location.find_by(name: "Bree").id, distance: "12.2865724534977", time: 737, description: nil, road: "East Road"}, # 31 83
  {nw_end: Location.find_by(name: "Fornost").id, se_end: Location.find_by(name: "Bree").id, distance: "6.70003598897736", time: 402, description: nil, road: "North-South Road"}, # 82 83
  {nw_end: Location.find_by(name: "Bree").id, se_end: Location.find_by(name: "Midgewater Marshes").id, distance: "5.26732028641595", time: 316, description: nil, road: "East Road"}, # 83 62
  {nw_end: Location.find_by(name: "Midgewater Marshes").id, se_end: Location.find_by(name: "Weathertop").id, distance: "8.03776131696847", time: 482, description: nil, road: "East Road"}, # 62 48
  {nw_end: Location.find_by(name: "Weathertop").id, se_end: Location.find_by(name: "Last Bridge").id, distance: "15.3834362248435", time: 923, description: nil, road: "East Road"}, # 48 61
  {nw_end: Location.find_by(name: "Great West Road/?Road of Lossanarch").id, se_end: Location.find_by(name: "Minas Tirith").id, distance: "3.15073305743041", time: 189, description: nil, road: "Great West Road"}, # 93 50
  {nw_end: Location.find_by(name: "Bree").id, se_end: Location.find_by(name: "Barrow Downs").id, distance: "3.58108695979736", time: 214, description: nil, road: "North-South Road"}, # 83 81
  {nw_end: Location.find_by(name: "Barrow Downs").id, se_end: Location.find_by(name: "?Sarn Road/North-South Road").id, distance: "3.57422568060211", time: 214, description: nil, road: "North-South Road"}, # 81 90
  {nw_end: Location.find_by(name: "East Road/?Sarn Road").id, se_end: Location.find_by(name: "Sarn Ford").id, distance: "16.3840576321753", time: 983, description: nil, road: "?Sarn Road"}, # 91 63
  {nw_end: Location.find_by(name: "Sarn Ford").id, se_end: Location.find_by(name: "?Sarn Road/North-South Road").id, distance: "6.92227777884263", time: 415, description: nil, road: "?Sarn Road"}, # 63 90
  {nw_end: Location.find_by(name: "?Sarn Road/North-South Road").id, se_end: Location.find_by(name: "Tharbad").id, distance: "12.8565975222312", time: 771, description: nil, road: "North-South Road"}, # 90 64
  {nw_end: Location.find_by(name: "Last Bridge").id, se_end: Location.find_by(name: "Ford of Bruinen").id, distance: "12.2471975569395", time: 734, description: nil, road: "East Road"}, # 61 65
  {nw_end: Location.find_by(name: "Ford of Bruinen").id, se_end: Location.find_by(name: "Rivendell").id, distance: "2.87070390131265", time: 172, description: nil, road: "East Road"}, # 65 84
  {nw_end: Location.find_by(name: "Elostirion").id, se_end: Location.find_by(name: "East Road/?Sarn Road").id, distance: "14.269415444189", time: 856, description: nil, road: "East Road"}, # 66 91
  {nw_end: Location.find_by(name: "Mithlond").id, se_end: Location.find_by(name: "Elostirion").id, distance: "6.05545434489849", time: 363, description: nil, road: "East Road"}, # 85 66
  {nw_end: Location.find_by(name: "Great West Road/?Road of Lossanarch").id, se_end: Location.find_by(name: "Pelargir").id, distance: "8.6934922825396", time: 521, description: nil, road: "?Road of Lossanarch"} # 93 88
])
RouteWarning.create!([
  {route_segment_id: RouteSegment.where('nw_end = ? AND se_end = ?', Location.find_by(name: "East Road/The Causeway").id, Location.find_by(name: "The Golden Perch").id), text: "SAMPLE warning on the Causeway"}, # 43, 32
  {route_segment_id: RouteSegment.where('nw_end = ? AND se_end = ?', Location.find_by(name: "Bree").id, Location.find_by(name: "Barrow Downs").id), text: "SAMPLE warning on the North-South Road"}, # 83, 81
  {route_segment_id: RouteSegment.where('nw_end = ? AND se_end = ?', Location.find_by(name: "Bamfurlong").id, Location.find_by(name: "Maggot's Lane/The Causeway").id), text: "Farmer Maggot has trained dogs to deter the would-be mushroom thief"} # 29, 37
])
Synonym.create!([
  {name: "Amon Sul", location_id: Location.find_by(name: "Weathertop").id},
  {name: "Bridge of Stonebows", location_id: Location.find_by(name: "Brandywine Bridge").id},
  {name: "Great Bridge", location_id: Location.find_by(name: "Brandywine Bridge").id},
  {name: "Erebor", location_id: Location.find_by(name: "The Lonely Mountain").id},
  {name: "Minas Arnor", location_id: Location.find_by(name: "Minas Tirith").id},
  {name: "The White City", location_id: Location.find_by(name: "Minas Tirith").id},
  {name: "City of Kings", location_id: Location.find_by(name: "Minas Tirith").id},
  {name: "Mundburg", location_id: Location.find_by(name: "Minas Tirith").id},
  {name: "Minas Ithil", location_id: Location.find_by(name: "Minas Morgul").id},
  {name: "The Dead City", location_id: Location.find_by(name: "Minas Tirith").id},
  {name: "The Tower of Sorcery", location_id: Location.find_by(name: "Minas Tirith").id},
  {name: "Pass of Imladris", location_id: Location.find_by(name: "High Pass").id},
  {name: "Cirith Forn en Andrath", location_id: Location.find_by(name: "High Pass").id},
  {name: "Angrenost", location_id: Location.find_by(name: "").id},
  {name: "Nan Curunir", location_id: Location.find_by(name: "").id},
  {name: "Wizard's Vale", location_id: Location.find_by(name: "").id},
  {name: "The Dark Tower", location_id: Location.find_by(name: "").id},
  {name: "The Dark Tower of Mordor", location_id: Location.find_by(name: "").id},
  {name: "Lugbúrz", location_id: Location.find_by(name: "").id},
  {name: "Barad-dûr", location_id: Location.find_by(name: "").id},
  {name: "Mount Doom", location_id: Location.find_by(name: "").id},
  {name: "Amon Amarth", location_id: Location.find_by(name: "").id},
  {name: "The Fiery Mountain", location_id: Location.find_by(name: "").id},
  {name: "Dagorlad", location_id: Location.find_by(name: "").id},
  {name: "Doors of Durin", location_id: Location.find_by(name: "").id},
  {name: "West-gate", location_id: Location.find_by(name: "").id},
  {name: "West-door of Moria", location_id: Location.find_by(name: "").id},
  {name: "Elven Door", location_id: Location.find_by(name: "").id},
  {name: "Wetwang", location_id: Location.find_by(name: "").id},
  {name: "Ford of Rivendell", location_id: Location.find_by(name: "").id},
  {name: "Amon Lanc", location_id: Location.find_by(name: "").id},
  {name: "Athrad Angren", location_id: Location.find_by(name: "").id},
  {name: "Ethraid Engrin", location_id: Location.find_by(name: "").id},
  {name: "Aglarond", location_id: Location.find_by(name: "").id},
  {name: "The Cross-roads of the Fallen King", location_id: Location.find_by(name: "").id},
  {name: "Black Gate", location_id: Location.find_by(name: "").id},
  {name: "Crossing of Poros", location_id: Location.find_by(name: "").id},
  {name: "Fords of Poros", location_id: Location.find_by(name: "").id},
  {name: "Loeg Ningloron", location_id: Location.find_by(name: "").id},
  {name: "Lake-town", location_id: Location.find_by(name: "").id},
  {name: "Lothlórien", location_id: Location.find_by(name: "").id},
  {name: "Lórien", location_id: Location.find_by(name: "").id},
  {name: "Lórinand", location_id: Location.find_by(name: "").id},
  {name: "Laurelindórenan", location_id: Location.find_by(name: "").id},
  {name: "The Golden Wood", location_id: Location.find_by(name: "").id},
  {name: "The Hidden Land", location_id: Location.find_by(name: "").id},
  {name: "Dwimordene", location_id: Location.find_by(name: "").id},
  {name: "Barrow-downs", location_id: Location.find_by(name: "").id},
  {name: "Tyrn Gorthad", location_id: Location.find_by(name: "").id},
  {name: "Fornost Erain", location_id: Location.find_by(name: "").id},
  {name: "Deadmen's Dike", location_id: Location.find_by(name: "").id},
  {name: "Norbury of the Kings", location_id: Location.find_by(name: "").id},
  {name: "Imladris", location_id: Location.find_by(name: "").id},
  {name: "Karningul", location_id: Location.find_by(name: "").id},
  {name: "Last Homely House East of the Sea", location_id: Location.find_by(name: "").id},
  {name: "Grey Havens", location_id: Location.find_by(name: "").id},
  {name: "Citadel of the Stars", location_id: Location.find_by(name: "").id},
  {name: "Rohan (Capital)", location_id: Location.find_by(name: "").id},
  {name: "Gondor (Capital)", location_id: Location.find_by(name: "").id},
  {name: "Angrenost", location_id: Location.find_by(name: "Isengard").id},
  {name: "Nan Curunir", location_id: Location.find_by(name: "Isengard").id},
  {name: "Wizard's Vale", location_id: Location.find_by(name: "Isengard").id},
  {name: "The Dark Tower", location_id: Location.find_by(name: "Barad-dur").id},
  {name: "The Dark Tower of Mordor", location_id: Location.find_by(name: "Barad-dur").id},
  {name: "Lugbúrz", location_id: Location.find_by(name: "Barad-dur").id},
  {name: "Barad-dûr", location_id: Location.find_by(name: "Barad-dur").id},
  {name: "Mount Doom", location_id: Location.find_by(name: "Orodruin").id},
  {name: "Amon Amarth", location_id: Location.find_by(name: "Orodruin").id},
  {name: "The Fiery Mountain", location_id: Location.find_by(name: "Orodruin").id},
  {name: "Dagorlad", location_id: Location.find_by(name: "Dead Marshes").id},
  {name: "Doors of Durin", location_id: Location.find_by(name: "Moria Gate").id},
  {name: "West-gate", location_id: Location.find_by(name: "Moria Gate").id},
  {name: "West-door of Moria", location_id: Location.find_by(name: "Moria Gate").id},
  {name: "Elven Door", location_id: Location.find_by(name: "Moria Gate").id},
  {name: "Wetwang", location_id: Location.find_by(name: "Nindalf").id},
  {name: "Ford of Rivendell", location_id: Location.find_by(name: "Ford of Bruinen").id},
  {name: "Amon Lanc", location_id: Location.find_by(name: "Dol Guldur").id},
  {name: "Athrad Angren", location_id: Location.find_by(name: "Fords of Isen").id},
  {name: "Ethraid Engrin", location_id: Location.find_by(name: "Fords of Isen").id},
  {name: "Aglarond", location_id: Location.find_by(name: "Helm's Deep").id},
  {name: "The Cross-roads of the Fallen King", location_id: Location.find_by(name: "The Crossroads").id},
  {name: "Black Gate", location_id: Location.find_by(name: "Morannon").id},
  {name: "Crossing of Poros", location_id: Location.find_by(name: "Crossings of Poros").id},
  {name: "Fords of Poros", location_id: Location.find_by(name: "Crossings of Poros").id},
  {name: "Loeg Ningloron", location_id: Location.find_by(name: "Gladden Fields").id},
  {name: "Lake-town", location_id: Location.find_by(name: "Esgaroth").id},
  {name: "Lothlórien", location_id: Location.find_by(name: "Lothlorien").id},
  {name: "Lórien", location_id: Location.find_by(name: "Lothlorien").id},
  {name: "Lórinand", location_id: Location.find_by(name: "Lothlorien").id},
  {name: "Laurelindórenan", location_id: Location.find_by(name: "Lothlorien").id},
  {name: "The Golden Wood", location_id: Location.find_by(name: "Lothlorien").id},
  {name: "The Hidden Land", location_id: Location.find_by(name: "Lothlorien").id},
  {name: "Dwimordene", location_id: Location.find_by(name: "Lothlorien").id},
  {name: "Barrow-downs", location_id: Location.find_by(name: "Barrow Downs").id},
  {name: "Tyrn Gorthad", location_id: Location.find_by(name: "Barrow Downs").id},
  {name: "Fornost Erain", location_id: Location.find_by(name: "Fornost").id},
  {name: "Deadmen's Dike", location_id: Location.find_by(name: "Fornost").id},
  {name: "Norbury of the Kings", location_id: Location.find_by(name: "Fornost").id},
  {name: "Imladris", location_id: Location.find_by(name: "Rivendell").id},
  {name: "Karningul", location_id: Location.find_by(name: "Rivendell").id},
  {name: "Last Homely House East of the Sea", location_id: Location.find_by(name: "Rivendel",).id},
  {name: "Grey Havens", location_id: Location.find_by(name: "Mithlond").id},
  {name: "Citadel of the Stars", location_id: Location.find_by(name: "Osgiliath").id},
  {name: "Rohan (Capital)", location_id: Location.find_by(name: "Edoras").id},
  {name: "Gondor (Capital)", location_id: Location.find_by(name: "Minas Tirith").id}
])