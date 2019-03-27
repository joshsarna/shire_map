# Out with the old

locations = Location.all
locations.each do |location|
  location.destroy
end

maps = Map.all
maps.each do |map|
  map.destroy
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

images = Image.all
images.each do |image|
  image.destroy
end

reviews = Review.all
reviews.each do |review|
  review.destroy
end

# In with the new

Location.create!([
  {name: "Rushock Bog", lng: "319.0", lat: "-313.0", location_type: "region", lodging_site: false},
  {name: "Greenfields", lng: "631.0", lat: "-114.0", location_type: "region", lodging_site: false},
  {name: "Bindbole Wood", lng: "437.0", lat: "-183.0", location_type: "region", lodging_site: false},
  {name: "Hobbiton", lng: "468.0", lat: "-385.0", location_type: "region", lodging_site: false},
  {name: "Budgeford", lng: "738.0", lat: "-394.0", location_type: "region", lodging_site: false},
  {name: "Stock", lng: "810.0", lat: "-437.0", location_type: "region", lodging_site: false},
  {name: "Bywater", lng: "538.0", lat: "-428.0", location_type: "region", lodging_site: false},
  {name: "Little Delving", lng: "215.0", lat: "-433.0", location_type: "region", lodging_site: false},
  {name: "Michel Delving", lng: "284.0", lat: "-528.0", location_type: "region", lodging_site: false},
  {name: "Waymeet", lng: "381.0", lat: "-470.0", location_type: "region", lodging_site: false},
  {name: "Tuckborough", lng: "458.0", lat: "-510.0", location_type: "region", lodging_site: false},
  {name: "Woodhall", lng: "727.0", lat: "-504.0", location_type: "region", lodging_site: false},
  {name: "The Marish", lng: "820.0", lat: "-553.0", location_type: "region", lodging_site: false},
  {name: "Shire Homesteads", lng: "304.0", lat: "-675.0", location_type: "region", lodging_site: false},
  {name: "Scary", lng: "694.0", lat: "-240.0", location_type: "region", lodging_site: false},
  {name: "East Road/South to Longbottom", lng: "-118.186241", lat: "34.137864", location_type: "intersection", lodging_site: false},
  {name: "East Road/North to Little Delving", lng: "-118.192256", lat: "34.138157", location_type: "intersection", lodging_site: false},
  {name: "?Tuckborough Road/?Woodhall Road", lng: "-118.03346", lat: "34.118819", location_type: "intersection", lodging_site: false},
  {name: "Bagshot Row 3", lng: "-118.1381833", lat: "34.15413611", location_type: "site", lodging_site: false},
  {name: "Bagshot Row 2", lng: "-118.1377028", lat: "34.154125", location_type: "site", lodging_site: false},
  {name: "Bagshot Row 1", lng: "-118.1370528", lat: "34.15413611", location_type: "site", lodging_site: false},
  {name: "Bag End", lng: "-118.1370833", lat: "34.15555", location_type: "site", lodging_site: false},
  {name: "Bywater Bridge", lng: "-118.1369972", lat: "34.15182222", location_type: "site", lodging_site: false},
  {name: "Bywater Road/Hill Lane", lng: "-118.1369111", lat: "34.15126944", location_type: "intersection", lodging_site: false},
  {name: "Barad-dur", lng: "-102.830978", lat: "25.186119", location_type: "site", lodging_site: false},
  {name: "?Woodhall Road/Unmarked Trail", lng: "-118.027846", lat: "34.118526", location_type: "intersection", lodging_site: false},
  {name: "The Lonely Mountain", lng: "-104.824228", lat: "36.215361", location_type: "site", lodging_site: false},
  {name: "The Long Lake", lng: "-104.824228", lat: "35.665731", location_type: "site", lodging_site: false},
  {name: "?Tuckborough Road/The Causeway", lng: "-117.981731", lat: "34.132883", location_type: "intersection", lodging_site: false},
  {name: "Dead Marshes", lng: "-105.741123", lat: "26.322021", location_type: "site", lodging_site: false},
  {name: "Orodruin", lng: "-103.668143", lat: "24.966267", location_type: "site", lodging_site: false},
  {name: "Last Bridge", lng: "-112.677633", lat: "34.200051", location_type: "site", lodging_site: false},
  {name: "Harlond", lng: "-122.962803", lat: "32.880939", location_type: "site", lodging_site: false},
  {name: "Forlond", lng: "-124.198618", lat: "33.467211", location_type: "site", lodging_site: false},
  {name: "Stocktower", lng: "-117.980528", lat: "34.129953", location_type: "site", lodging_site: false},
  {name: "Minas Morgul", lng: "-105.103283", lat: "24.379995", location_type: "site", lodging_site: false},
  {name: "Ferry Lane/The Causeway", lng: "-117.97331", lat: "34.125265", location_type: "intersection", lodging_site: false},
  {name: "Dol Guldur", lng: "-107.415453", lat: "30.755703", location_type: "site", lodging_site: false},
  {name: "Mathom-House", lng: "-118.211706", lat: "34.154614", location_type: "site", lodging_site: false},
  {name: "Buckleberry Ferry", lng: "-117.968899", lat: "34.126144", location_type: "site", lodging_site: false},
  {name: "Brockenborings", lng: "618.0", lat: "-194.0", location_type: "region", lodging_site: false},
  {name: "East Road/The Causeway", lng: "-117.990954", lat: "34.145482", location_type: "intersection", lodging_site: false},
  {name: "Bamfurlong", lng: "-117.974112", lat: "34.117647", location_type: "site", lodging_site: false},
  {name: "East Road/North to Scary", lng: "-118.023836", lat: "34.145189", location_type: "intersection", lodging_site: false},
  {name: "East Road/North to Oatbarton", lng: "-118.081981", lat: "34.14138", location_type: "intersection", lodging_site: false},
  {name: "Maggot's Lane/The Causeway", lng: "-117.972909", lat: "34.117647", location_type: "intersection", lodging_site: false},
  {name: "Brandywine Bridge", lng: "-117.985741", lat: "34.146068", location_type: "site", lodging_site: false},
  {name: "Bagshot Row/Hill Lane", lng: "-118.135314", lat: "34.154272", location_type: "intersection", lodging_site: false},
  {name: "East Road/Bywater Road", lng: "-118.120076", lat: "34.140208", location_type: "intersection", lodging_site: false},
  {name: "The Hill", lng: "448.0", lat: "-282.0", location_type: "region", lodging_site: false},
  {name: "Bridgefields", lng: "746.0", lat: "-307.0", location_type: "region", lodging_site: false},
  {name: "Weathertop", lng: "-114.511423", lat: "33.980199", location_type: "site", lodging_site: false},
  {name: "High Pass", lng: "-109.926948", lat: "34.383261", location_type: "site", lodging_site: false},
  {name: "Isengard", lng: "-112.318848", lat: "27.897627", location_type: "site", lodging_site: false},
  {name: "Moria Gate", lng: "-111.322223", lat: "31.378617", location_type: "site", lodging_site: false},
  {name: "Overhill", lng: "490.0", lat: "-239.0", location_type: "region", lodging_site: false},
  {name: "Old Ford", lng: "-108.571538", lat: "34.419903", location_type: "site", lodging_site: false},
  {name: "Nindalf", lng: "-106.339098", lat: "25.772391", location_type: "site", lodging_site: false},
  {name: "Midgewater Marshes", lng: "-115.468183", lat: "33.943557", location_type: "site", lodging_site: false},
  {name: "Sarn Ford", lng: "-116.903323", lat: "32.514519", location_type: "site", lodging_site: false},
  {name: "Tharbad", lng: "-114.870208", lat: "31.048839", location_type: "site", lodging_site: false},
  {name: "Ford of Bruinen", lng: "-111.202628", lat: "33.943557", location_type: "site", lodging_site: false},
  {name: "Elostirion", lng: "-120.291848", lat: "33.833631", location_type: "site", lodging_site: false},
  {name: "The Golden Perch", lng: "-117.98133", lat: "34.134641", location_type: "site", lodging_site: true},
  {name: "The Green Dragon", lng: "-118.1243722", lat: "34.14472222", location_type: "site", lodging_site: true},
  {name: "Elven Campsite", lng: "-118.027846", lat: "34.116475", location_type: "site", lodging_site: true},
  {name: "Minas Tirith", lng: "-105.980313", lat: "24.270069", location_type: "site", lodging_site: false},
  {name: "Frogmorton", lng: "617.0", lat: "-400.0", location_type: "region", lodging_site: false},
  {name: "GW1", lng: "-110.006678", lat: "25.479255", location_type: "intersection", lodging_site: false},
  {name: "GW2", lng: "-109.528298", lat: "25.296045", location_type: "intersection", lodging_site: false},
  {name: "GW3", lng: "-109.328973", lat: "25.149477", location_type: "intersection", lodging_site: false},
  {name: "GW4", lng: "-109.010053", lat: "25.076193", location_type: "intersection", lodging_site: false},
  {name: "GW5", lng: "-108.850593", lat: "24.966267", location_type: "intersection", lodging_site: false},
  {name: "GW6", lng: "-107.574913", lat: "24.892983", location_type: "intersection", lodging_site: false},
  {name: "GW7", lng: "-106.498558", lat: "24.563205", location_type: "intersection", lodging_site: false},
  {name: "GW8", lng: "-106.139773", lat: "24.526563", location_type: "intersection", lodging_site: false},
  {name: "Far Downs", lng: "-119.534413", lat: "33.577137", location_type: "site", lodging_site: false},
  {name: "Barrow Downs", lng: "-116.504673", lat: "33.577137", location_type: "site", lodging_site: false},
  {name: "Fornost", lng: "-116.584403", lat: "35.409237", location_type: "site", lodging_site: false},
  {name: "Rivendell", lng: "-110.883708", lat: "34.126767", location_type: "site", lodging_site: false},
  {name: "Mithlond", lng: "-121.168878", lat: "33.943557", location_type: "site", lodging_site: false},
  {name: "Edoras", lng: "-110.524923", lat: "25.955601", location_type: "site", lodging_site: false},
  {name: "Pelargir", lng: "-106.339098", lat: "22.071549", location_type: "site", lodging_site: false},
  {name: "Erech", lng: "-110.564788", lat: "24.856341", location_type: "site", lodging_site: false},
  {name: "?Sarn Road/North-South Road", lng: "-116.145888", lat: "32.404593", location_type: "intersection", lodging_site: false},
  {name: "East Road/?Sarn Road", lng: "-118.737113", lat: "33.760347", location_type: "intersection", lodging_site: false},
  {name: "Great West Road/?Helm's Road", lng: "-111.561413", lat: "26.725083", location_type: "intersection", lodging_site: false},
  {name: "Great West Road/?Road of Lossanarch", lng: "-105.661393", lat: "24.160143", location_type: "intersection", lodging_site: false},
  {name: "Fords of Isen", lng: "-112.318848", lat: "27.091503", location_type: "site", lodging_site: false},
  {name: "Helm's Deep", lng: "-111.720873", lat: "26.505231", location_type: "site", lodging_site: false},
  {name: "Crossings of Poros", lng: "-105.262743", lat: "21.705129", location_type: "site", lodging_site: false},
  {name: "Gladden Fields", lng: "-108.093158", lat: "32.734371", location_type: "site", lodging_site: false},
  {name: "HR1", lng: "-105.382338", lat: "26.175453", location_type: "intersection", lodging_site: false},
  {name: "HR2", lng: "-105.183013", lat: "26.431947", location_type: "intersection", lodging_site: false},
  {name: "NS1", lng: "-116.305348", lat: "33.503853", location_type: "intersection", lodging_site: false},
  {name: "NS2", lng: "-116.424943", lat: "32.954223", location_type: "intersection", lodging_site: false},
  {name: "NS3", lng: "-115.707373", lat: "32.148099", location_type: "intersection", lodging_site: false},
  {name: "Esgaroth", lng: "-104.744498", lat: "35.775657", location_type: "site", lodging_site: false},
  {name: "NS4", lng: "-115.069533", lat: "31.415259", location_type: "intersection", lodging_site: false},
  {name: "NS5", lng: "-114.670883", lat: "30.755703", location_type: "intersection", lodging_site: false},
  {name: "NS6", lng: "-113.714123", lat: "27.824343", location_type: "intersection", lodging_site: false},
  {name: "NS7", lng: "-113.315473", lat: "27.347997", location_type: "intersection", lodging_site: false},
  {name: "NS8", lng: "-112.876958", lat: "27.311355", location_type: "intersection", lodging_site: false},
  {name: "Morannon", lng: "-104.824228", lat: "26.358663", location_type: "site", lodging_site: false},
  {name: "Lothlorien", lng: "-109.687758", lat: "30.499209", location_type: "site", lodging_site: false},
  {name: "Osgiliath", lng: "-105.701258", lat: "24.379995", location_type: "site", lodging_site: false},
  {name: "The Crossroads", lng: "-105.302608", lat: "24.379995", location_type: "site", lodging_site: false},
  {name: "Dome of Stars", lng: "-105.780988", lat: "24.343353", location_type: "site", lodging_site: false},
  {name: "SW1", lng: "-110.046543", lat: "24.599847", location_type: "intersection", lodging_site: false},
  {name: "SW2", lng: "-109.887083", lat: "24.233427", location_type: "intersection", lodging_site: false},
  {name: "SW3", lng: "-109.368838", lat: "23.976933", location_type: "intersection", lodging_site: false},
  {name: "SW4", lng: "-108.970188", lat: "23.647155", location_type: "intersection", lodging_site: false},
  {name: "SW5", lng: "-108.810728", lat: "23.207451", location_type: "intersection", lodging_site: false},
  {name: "SW6", lng: "-108.730998", lat: "22.401327", location_type: "intersection", lodging_site: false},
  {name: "SW7", lng: "-108.252618", lat: "22.181475", location_type: "intersection", lodging_site: false},
  {name: "SW8", lng: "-107.136398", lat: "22.254759", location_type: "intersection", lodging_site: false},
  {name: "ER1", lng: "-116.783728", lat: "34.200051", location_type: "intersection", lodging_site: false},
  {name: "ER2", lng: "-116.464808", lat: "34.090125", location_type: "intersection", lodging_site: false},
  {name: "Bree West Gate", lng: "-116.185753", lat: "33.943557", location_type: "site", lodging_site: false},
  {name: "The Prancing Pony", lng: "-116.145888", lat: "33.943557", location_type: "site", lodging_site: true},
  {name: "Bree South Gate", lng: "-116.185753", lat: "33.796989", location_type: "site", lodging_site: false},
  {name: "ER5", lng: "-113.793853", lat: "34.273335", location_type: "intersection", lodging_site: false},
  {name: "ER6", lng: "-113.435068", lat: "34.309977", location_type: "intersection", lodging_site: false},
  {name: "ER7", lng: "-113.116148", lat: "34.309977", location_type: "intersection", lodging_site: false},
  {name: "ER3", lng: "-115.627643", lat: "33.980199", location_type: "intersection", lodging_site: false},
  {name: "ER4", lng: "-114.710748", lat: "33.980199", location_type: "intersection", lodging_site: false},
  {name: "Tower of Cirith Ungol", lng: "-104.624903", lat: "24.416637", location_type: "site", lodging_site: false},
  {name: "East Road/North-South Road", lng: "-116.145888", lat: "33.833631", location_type: "intersection", lodging_site: false},
  {name: "Isenmouthe", lng: "-104.385713", lat: "25.735749", location_type: "site", lodging_site: false}
])

Map.create!([
  {lat_floor: "32.404593", lat_ceiling: "37.607757", lng_floor: "-111.561413", lng_ceiling: "-103.747873", name: "Wilderland", image_url: "/images/MapOfWilderland.jpg", level: "secondary", height: 600, width: 750},
  {lat_floor: "27.787701", lat_ceiling: "39.806277", lng_floor: "-126.770786397", lng_ceiling: "-107.335723", name: "Eriador", image_url: "/images/Eriador-map.jpg", level: "secondary", height: 1163, width: 1600},
  {lat_floor: "24.15028614778", lat_ceiling: "24.16999985222", lng_floor: "-105.43986302335", lng_ceiling: "-105.40454297665", name: "Osgiliath", image_url: "https://i.pinimg.com/originals/b8/93/6a/b8936ae6eedd5c26d4f242d37a2081b9.jpg", level: "tertiary", height: nil, width: nil},
  {lat_floor: "17.6", lat_ceiling: "39.9345088562", lng_floor: "-126.770786397", lng_ceiling: "-93.9623874473", name: "Middle Earth", image_url: "http://donsmaps.com/images29/middleearthlargelargerstill.jpg", level: "primary", height: 605, width: 807},
  {lat_floor: "33.9955302", lat_ceiling: "34.0245158", lng_floor: "-117.387304", lng_ceiling: "-117.353406", name: "Bree", image_url: "https://vignette.wikia.nocookie.net/lotr/images/f/f7/Breemap3.jpg/revision/latest?cb=20160503181050", level: "quaternary", height: nil, width: nil},
  {lat_floor: "33.9882839", lat_ceiling: "34.0317621", lng_floor: "-117.396217", lng_ceiling: "-117.344493", name: "Bree-land", image_url: "https://ahobbitsjourney.files.wordpress.com/2014/06/bree-land-map-archet-combe-staddle.jpg", level: "tertiary", height: nil, width: nil},
  {lat_floor: "34.064907", lat_ceiling: "34.197343", lng_floor: "-118.245188", lng_ceiling: "-117.93321", name: "A Part of the Shire", image_url: "http://corecanvas.s3.amazonaws.com/theonering-0188db0e/gallery/original/shire_map.jpg", level: "tertiary", height: 478, width: 807}
])

Review.create!([
  {reviewer: "Sam", text: "It's a big house this, and very peculiar. Always a bit more to discover, and no knowing what you'll find round a corner. And Elves, sir! Elves here and Elves there. Some like kings, terrible and splended; and some as merry as children.", location_id: Location.find_by(name: "Rivendell").id},
  {reviewer: "Bilbo", text: "A perfect house, whether you like food or sleep or story-telling or singing or just sitting and thinking best, or a pleasant mixture of them all.", location_id: Location.find_by(name: "Rivendell").id},
  {reviewer: "Boromir", text: "One does not simply walk into Mordor. Its Black Gates are guarded by more than just Orcs. There is evil there that does not sleep, and the Great Eye is ever watchful.", location_id: Location.find_by(name: "Morannon").id},
  {reviewer: "Pippen", text: "Somewhat strange of a place", location_id: Location.find_by(name: "Minas Tirith").id},
  {reviewer: "Boromir", text: "Have you ever seen it? The White Tower of Ecthelion, glimmering like a spike of pearl and silver, its banners caught high in the morning breeze. Have you ever been called home by the clear ringing of silver trumpets?", location_id: Location.find_by(name: "Minas Tirith").id},
  {reviewer: "Elrond", text: "There in the courts of the King grows a white tree, from the seed of that tree which Isildur brought over the deep waters, and the seed of that tree before came from Eressëa, and before that out of the Uttermost West in the Day before days when the world was young.", location_id: Location.find_by(name: "Minas Tirith").id}
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
  {name: "Last Homely House East of the Sea", location_id: Location.find_by(name: "Rivendell",).id},
  {name: "Grey Havens", location_id: Location.find_by(name: "Mithlond").id},
  {name: "Citadel of the Stars", location_id: Location.find_by(name: "Osgiliath").id},
  {name: "Rohan (Capital)", location_id: Location.find_by(name: "Edoras").id},
  {name: "Gondor (Capital)", location_id: Location.find_by(name: "Minas Tirith").id},
  {name: "House of Elrond", location_id: Location.find_by(name: "Rivendell").id}
])

Image.create!([
  {image_url: "https://vignette.wikia.nocookie.net/lotr/images/c/c1/Images_%288%29.jpg/revision/latest?cb=20120612055950", location_id: Location.find_by(name: "Minas Tirith").id},
  {image_url: "https://vignette.wikia.nocookie.net/lotr/images/e/e4/Minas_Tirith.jpg/revision/latest?cb=20141228214636", location_id: Location.find_by(name: "Minas Tirith").id},
  {image_url: "https://vignette.wikia.nocookie.net/lotr/images/c/ca/Screen_shot_2010-12-07_at_6.32.19_PM.png/revision/latest?cb=20141228220242", location_id: Location.find_by(name: "Minas Tirith").id},
  {image_url: "https://vignette.wikia.nocookie.net/lotr/images/d/d8/614690.jpg/revision/latest/scale-to-width-down/350?cb=20180501204919", location_id: Location.find_by(name: "Rivendell").id},
  {image_url: "https://lotr-sounds.ambient-mixer.com/images_template/4/b/3/4b37bcdf212da08de12dd70b422dbcfa_full.jpg", location_id: Location.find_by(name: "Rivendell").id},
  {image_url: "https://cdn.quizzclub.com/trivia/2016-11/in-the-lord-of-the-rings-which-mythological-creatures-live-at-rivendell.jpg", location_id: Location.find_by(name: "Rivendell").id}
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
  {nw_end: Location.find_by(name: "Fords of Isen").id, se_end: Location.find_by(name: "Great West Road/?Helm's Road").id, distance: "6.03144135870598", time: 361, description: nil, road: "Great West Road"}, # 70 92
  {nw_end: Location.find_by(name: "East Road/North to Oatbarton").id, se_end: Location.find_by(name: "East Road/North to Scary").id, distance: "1.12586171627523", time: 67, description: nil, road: "East Road"}, # 47 42
  {nw_end: Location.find_by(name: "The Golden Perch").id, se_end: Location.find_by(name: "?Tuckborough Road/The Causeway").id, distance: "0.0412667354025934", time: 2, description: nil, road: "The Causeway"}, # 32 44
  {nw_end: Location.find_by(name: "?Tuckborough Road/The Causeway").id, se_end: Location.find_by(name: "Stocktower").id, distance: "0.0714369928872643", time: 4, description: nil, road: "The Causeway"}, # 44 24
  {nw_end: Location.find_by(name: "Stocktower").id, se_end: Location.find_by(name: "Ferry Lane/The Causeway").id, distance: "0.176347122662142", time: 10, description: nil, road: "The Causeway"}, # 24 45
  {nw_end: Location.find_by(name: "Ferry Lane/The Causeway").id, se_end: Location.find_by(name: "Maggot's Lane/The Causeway").id, distance: "0.175818715988043", time: 10, description: nil, road: "The Causeway"}, # 45 37
  {nw_end: Location.find_by(name: "Ferry Lane/The Causeway").id, se_end: Location.find_by(name: "Buckleberry Ferry").id, distance: "0.087528672029317", time: 5, description: nil, road: "Ferry Lane"}, # 45 23
  {nw_end: Location.find_by(name: "East Road/North to Scary").id, se_end: Location.find_by(name: "East Road/The Causeway").id, distance: "0.634790077513064", time: 38, description: nil, road: "East Road"}, # 42 43
  {nw_end: Location.find_by(name: "East Road/The Causeway").id, se_end: Location.find_by(name: "The Golden Perch").id, distance: "0.311440698359342", time: 18, description: nil, road: "The Causeway"}, # 43 32
  {nw_end: Location.find_by(name: "East Road/The Causeway").id, se_end: Location.find_by(name: "Brandywine Bridge").id, distance: "0.101534760031209", time: 6, description: nil, road: "East Road"}, # 43 31
  {nw_end: Location.find_by(name: "Rivendell").id, se_end: Location.find_by(name: "High Pass").id, distance: "7.74149962117883", time: 464, description: nil, road: "East Road"}, # 84 52
  {nw_end: Location.find_by(name: "High Pass").id, se_end: Location.find_by(name: "Old Ford").id, distance: "11.880337936", time: 712, description: nil, road: "Old Forest Road"}, # 52 59
  {nw_end: Location.find_by(name: "Great West Road/?Road of Lossanarch").id, se_end: Location.find_by(name: "The Crossroads").id, distance: "5.64288965038169", time: 338, description: nil, road: "Great West Road"}, # 93 72
  {nw_end: Location.find_by(name: "East Road/North to Little Delving").id, se_end: Location.find_by(name: "East Road/South to Longbottom").id, distance: "0.116309923531378", time: 6, description: nil, road: "East Road"}, # 39 38
  {nw_end: Location.find_by(name: "Mathom-House").id, se_end: Location.find_by(name: "East Road/North to Little Delving").id, distance: "0.533810729538892", time: 32, description: nil, road: "East Road"}, # 22 39
  {nw_end: Location.find_by(name: "Bamfurlong").id, se_end: Location.find_by(name: "Maggot's Lane/The Causeway").id, distance: "0.023222712", time: 1, description: nil, road: "Maggot's Lane"}, # 29 37
  {nw_end: Location.find_by(name: "?Tuckborough Road/?Woodhall Road").id, se_end: Location.find_by(name: "?Tuckborough Road/The Causeway").id, distance: "1.04990888024116", time: 62, description: nil, road: "?Tuckborough Road"}, # 40 44
  {nw_end: Location.find_by(name: "Great West Road/?Helm's Road").id, se_end: Location.find_by(name: "Helm's Deep").id, distance: "3.43067608618281", time: 205, description: nil, road: "?Helm's Road"}, # 92 71
  {nw_end: Location.find_by(name: "Great West Road/?Helm's Road").id, se_end: Location.find_by(name: "Edoras").id, distance: "10.1797171814538", time: 610, description: nil, road: "Great West Road"}, # 92 86
  {nw_end: Location.find_by(name: "?Tuckborough Road/?Woodhall Road").id, se_end: Location.find_by(name: "?Woodhall Road/Unmarked Trail").id, distance: "0.108583019227206", time: 6, description: nil, road: "?Woodhall Road"}, # 40 41
  {nw_end: Location.find_by(name: "?Woodhall Road/Unmarked Trail").id, se_end: Location.find_by(name: "Elven Campsite").id, distance: "0.047289907", time: 2, description: nil, road: "Unmarked Trail"}, # 41 30
  {nw_end: Location.find_by(name: "The Crossroads").id, se_end: Location.find_by(name: "Minas Morgul").id, distance: "2.44943951138789", time: 146, description: nil, road: "Great West Road"}, # 72 51
  {nw_end: Location.find_by(name: "Osgiliath").id, se_end: Location.find_by(name: "The Crossroads").id, distance: "1.82361113026772", time: 109, description: nil, road: "Great West Road"}, # 87 72
  {nw_end: Location.find_by(name: "Pelargir").id, se_end: Location.find_by(name: "Crossings of Poros").id, distance: "10.1189396017148", time: 607, description: nil, road: "?Small West Road"}, # 88 74
  {nw_end: Location.find_by(name: "Old Ford").id, se_end: Location.find_by(name: "Gladden Fields").id, distance: "6.39277779762653", time: 383, description: nil, road: "Anduin"}, # 59 76
  {nw_end: Location.find_by(name: "Great West Road/?Road of Lossanarch").id, se_end: Location.find_by(name: "Minas Tirith").id, distance: "3.15073305743041", time: 189, description: nil, road: "Great West Road"}, # 93 50
  {nw_end: Location.find_by(name: "The Crossroads").id, se_end: Location.find_by(name: "Crossings of Poros").id, distance: "8.78233821598651", time: 526, description: nil, road: "Harad Road"}, # 72 74
  {nw_end: Location.find_by(name: "Last Bridge").id, se_end: Location.find_by(name: "Ford of Bruinen").id, distance: "12.2471975569395", time: 734, description: nil, road: "East Road"}, # 61 65
  {nw_end: Location.find_by(name: "Ford of Bruinen").id, se_end: Location.find_by(name: "Rivendell").id, distance: "2.87070390131265", time: 172, description: nil, road: "East Road"}, # 65 84
  {nw_end: Location.find_by(name: "Great West Road/?Road of Lossanarch").id, se_end: Location.find_by(name: "Pelargir").id, distance: "8.6934922825396", time: 521, description: nil, road: "?Road of Lossanarch"}, # 93 88
  {nw_end: Location.find_by(name: "Elostirion").id, se_end: Location.find_by(name: "East Road/?Sarn Road").id, distance: "14.269415444189", time: 856, description: nil, road: "East Road"}, # 66 91
  {nw_end: Location.find_by(name: "Mithlond").id, se_end: Location.find_by(name: "Elostirion").id, distance: "6.05545434489849", time: 363, description: nil, road: "East Road"}, # 85 66
  {nw_end: Location.find_by(name: "East Road/?Sarn Road").id, se_end: Location.find_by(name: "Sarn Ford").id, distance: "16.3840576321753", time: 983, description: nil, road: "?Sarn Road"}, # 91 63
  {nw_end: Location.find_by(name: "Minas Tirith").id, se_end: Location.find_by(name: "Dome of Stars").id, distance: "0.710953721958249", time: 42, description: nil, road: "Great West Road"}, # 50 75
  {nw_end: Location.find_by(name: "Dome of Stars").id, se_end: Location.find_by(name: "Osgiliath").id, distance: "0.801273911753119", time: 48, description: nil, road: "Great West Road"}, # 75 87
  {nw_end: Location.find_by(name: "Fornost").id, se_end: Location.find_by(name: "East Road/North-South Road").id, distance: "6.70003598897736", time: 402, description: nil, road: "North-South Road"}, # 82 83
  {nw_end: Location.find_by(name: "Morannon").id, se_end: Location.find_by(name: "Isenmouthe").id, road: "Udûn Valley"}, # 73 139
  {nw_end: Location.find_by(name: "Isenmouthe").id, se_end: Location.find_by(name: "Barad-dur").id, road: "a road of unknown name"}, # 139 54
  {nw_end: Location.find_by(name: "Minas Morgul").id, se_end: Location.find_by(name: "Tower of Cirith Ungol").id, road: "Cirith Ungol"}, # 51 138
  {nw_end: Location.find_by(name: "Tower of Cirith Ungol").id, se_end: Location.find_by(name: "Orodruin").id, road: "Sauron's Road"}, # 138 55
  {nw_end: Location.find_by(name: "Erech").id, se_end: Location.find_by(name: "SW1").id, distance: "11.6214987078938", time: 697, description: nil, road: "?Small West Road"}, # 89 102
  {nw_end: Location.find_by(name: "East Road/North-South Road").id, se_end: Location.find_by(name: "NS1").id, distance: "8.20314176659542", time: 492, description: nil, road: "North-South Road"}, # 83 94
  {nw_end: Location.find_by(name: "NS1").id, se_end: Location.find_by(name: "NS2").id, distance: "12.8813919590166", time: 772, description: nil, road: "North-South Road"}, # 94 95
  {nw_end: Location.find_by(name: "NS2").id, se_end: Location.find_by(name: "?Sarn Road/North-South Road").id, distance: "13.7702138943404", time: 826, description: nil, road: "North-South Road"}, # 95 90
  {nw_end: Location.find_by(name: "?Sarn Road/North-South Road").id, se_end: Location.find_by(name: "NS3").id, distance: "10.3263252875694", time: 619, description: nil, road: "North-South Road"}, # 90 96
  {nw_end: Location.find_by(name: "NS3").id, se_end: Location.find_by(name: "NS4").id, distance: "20.9073747305393", time: 1254, description: nil, road: "North-South Road"}, # 96 97
  {nw_end: Location.find_by(name: "NS4").id, se_end: Location.find_by(name: "Tharbad").id, distance: "9.28349400463438", time: 557, description: nil, road: "North-South Road"}, # 97 64
  {nw_end: Location.find_by(name: "NS5").id, se_end: Location.find_by(name: "NS6").id, distance: "70.0664133754052", time: 4203, description: nil, road: "North-South Road"}, # 98 99
  {nw_end: Location.find_by(name: "Sarn Ford").id, se_end: Location.find_by(name: "?Sarn Road/North-South Road").id, distance: "14.8395759342706", time: 890, description: nil, road: "?Sarn Road"}, # 63 90
  {nw_end: Location.find_by(name: "NS6").id, se_end: Location.find_by(name: "NS7").id, distance: "13.4108176074637", time: 804, description: nil, road: "North-South Road"}, # 99 100
  {nw_end: Location.find_by(name: "NS7").id, se_end:Location.find_by(name: "NS8").id, distance: "8.50714924428603", time: 510, description: nil, road: "North-South Road"}, # 100 101
  {nw_end: Location.find_by(name: "NS8").id, se_end:Location.find_by(name: "Fords of Isen").id, distance: "11.9067149349027", time: 714, description: nil, road: "North-South Road"}, # 101 70
  {nw_end: Location.find_by(name: "Barrow Downs").id, se_end: Location.find_by(name: "NS1").id, distance: "4.20243376792587", time: 252, description: nil, road: "an unmarked trail"}, # 81 94
  {nw_end: Location.find_by(name: "Tharbad").id, se_end: Location.find_by(name: "NS5").id, distance: "7.77735216342798", time: 466, description: nil, road: "North-South Road"}, # 64 98
  {nw_end: Location.find_by(name: "SW1").id, se_end:Location.find_by(name: "SW2").id, distance: "8.99184860070038", time: 539, description: nil, road: "?Small West Road"}, # 102 103
  {nw_end: Location.find_by(name: "SW2").id, se_end:Location.find_by(name: "SW3").id, distance: "11.6214987078938", time: 697, description: nil, road: "?Small West Road"}, # 103 104
  {nw_end: Location.find_by(name: "Edoras").id, se_end: Location.find_by(name: "Erech").id, distance: "25.3573178747273", time: 1521, description: nil, road: "The Paths of the Dead"}, # 86 89
  {nw_end: Location.find_by(name: "SW3").id, se_end:Location.find_by(name: "SW4").id, distance: "10.8183848988841", time: 649, description: nil, road: "?Small West Road"}, # 104 105
  {nw_end: Location.find_by(name: "SW4").id, se_end:Location.find_by(name: "SW5").id, distance: "10.5952644987299", time: 635, description: nil, road: "?Small West Road"}, # 105 106
  {nw_end: Location.find_by(name: "SW5").id, se_end:Location.find_by(name: "SW6").id, distance: "18.6504162723198", time: 1119, description: nil, road: "?Small West Road"}, # 106 107
  {nw_end: Location.find_by(name: "SW6").id, se_end:Location.find_by(name: "SW7").id, distance: "10.5344562782683", time: 632, description: nil, road: "?Small West Road"}, # 107 108
  {nw_end: Location.find_by(name: "SW8").id, se_end:Location.find_by(name: "Pelargir").id, distance: "15.9602569235506", time: 957, description: nil, road: "?Small West Road"}, # 109 88
  {nw_end: Location.find_by(name: "Orodruin").id, se_end: Location.find_by(name: "Barad-dur").id, distance: "16.9370044102313", time: 1016, description: nil, road: "Sauron's Road"}, # 55 54
  {nw_end: Location.find_by(name: "HR1").id, se_end:Location.find_by(name: "The Crossroads").id, distance: "41.4264760326217", time: 2485, description: nil, road: "Harad Road"}, # 110 72
  {nw_end: Location.find_by(name: "HR2").id, se_end:Location.find_by(name: "Morannon").id, distance: "7.1291229632752", time: 427, description: nil, road: "Harad Road"}, # 111 73
  {nw_end: Location.find_by(name: "HR2").id, se_end:Location.find_by(name: "HR1").id, distance: "7.05553097923426", time: 423, description: nil, road: "Harad Road"}, # 111 110
  {nw_end: Location.find_by(name: "Edoras").id, se_end: Location.find_by(name: "GW1").id, distance: "14.8564042223522", time: 891, description: nil, road: "Great West Road"}, # 86 112
  {nw_end: Location.find_by(name: "GW1").id, se_end:Location.find_by(name: "GW2").id, distance: "10.1549592290523", time: 609, description: nil, road: "Great West Road"}, # 112 113
  {nw_end: Location.find_by(name: "GW2").id, se_end:Location.find_by(name: "GW3").id, distance: "5.12111325727507", time: 307, description: nil, road: "Great West Road"}, # 113 114
  {nw_end: Location.find_by(name: "GW3").id, se_end:Location.find_by(name: "GW4").id, distance: "6.38410276942025", time: 383, description: nil, road: "Great West Road"}, # 114 115
  {nw_end: Location.find_by(name: "GW4").id, se_end:Location.find_by(name: "GW5").id, distance: "3.98740847200949", time: 239, description: nil, road: "Great West Road"}, # 115 116
  {nw_end: Location.find_by(name: "GW5").id, se_end:Location.find_by(name: "GW6").id, distance: "24.6836288585802", time: 1481, description: nil, road: "Great West Road"}, # 116 117
  {nw_end: Location.find_by(name: "GW6").id, se_end:Location.find_by(name: "GW7").id, distance: "22.1255421595633", time: 1327, description: nil, road: "Great West Road"}, # 117 118
  {nw_end: Location.find_by(name: "GW7").id, se_end:Location.find_by(name: "GW8").id, distance: "6.97732444211168", time: 418, description: nil, road: "Great West Road"}, # 118 119
  {nw_end: Location.find_by(name: "GW8").id, se_end:Location.find_by(name: "Great West Road/?Road of Lossanarch").id, distance: "12.5162551635436", time: 750, description: nil, road: "Great West Road"}, # 119 93
  {nw_end: Location.find_by(name: "SW7").id, se_end:Location.find_by(name: "SW8").id, distance: "21.6136610101975", time: 1296, description: nil, road: "?Small West Road"}, # 108 109
  {nw_end: Location.find_by(name: "Brandywine Bridge").id, se_end: Location.find_by(name: "ER1").id, distance: "23.2370185711613", time: 1394, description: nil, road: "East Road"}, # 31 128
  {nw_end: Location.find_by(name: "ER1").id, se_end:Location.find_by(name: "ER2").id, distance: "6.65775221794366", time: 399, description: nil, road: "East Road"}, # 128 129
  {nw_end: Location.find_by(name: "ER2").id, se_end:Location.find_by(name: "East Road/North-South Road").id, distance: "8.53679307443082", time: 512, description: nil, road: "East Road"}, # 129 83
  {nw_end: Location.find_by(name: "East Road/North-South Road").id, se_end: Location.find_by(name: "Bree West Gate").id, distance: "2.64881612468246", time: 158, description: nil, road: "East Road"}, # 83 136
  {nw_end: Location.find_by(name: "Bree West Gate").id, se_end:Location.find_by(name: "The Prancing Pony").id, distance: "0.76955396", time: 46, description: nil, road: "East Road"}, # 136 135
  {nw_end: Location.find_by(name: "The Prancing Pony").id, se_end:Location.find_by(name: "Bree South Gate").id, distance: "3.46593160021922", time: 207, description: nil, road: "East Road"}, # 135 137
  {nw_end: Location.find_by(name: "Bree South Gate").id, se_end:Location.find_by(name: "ER3").id, distance: "11.5723069612762", time: 694, description: nil, road: "East Road"}, # 137 130
  {nw_end: Location.find_by(name: "ER3").id, se_end:Location.find_by(name: "ER4").id, distance: "17.69974108", time: 1061, description: nil, road: "East Road"}, # 130 131
  {nw_end: Location.find_by(name: "ER4").id, se_end:Location.find_by(name: "ER5").id, distance: "18.9463112119279", time: 1136, description: nil, road: "East Road"}, # 131 132
  {nw_end: Location.find_by(name: "ER5").id, se_end:Location.find_by(name: "ER6").id, distance: "6.97732444211168", time: 418, description: nil, road: "East Road"}, # 132 133
  {nw_end: Location.find_by(name: "ER6").id, se_end:Location.find_by(name: "ER7").id, distance: "6.15643168", time: 369, description: nil, road: "East Road"}, # 133 134
  {nw_end: Location.find_by(name: "ER7").id, se_end:Location.find_by(name: "Last Bridge").id, distance: "8.83639194154377", time: 530, description: nil, road: "East Road"}, # 134 61
  {nw_end: Location.find_by(name: "Weathertop").id, se_end: Location.find_by(name: "ER4").id, distance: "3.8477698", time: 230, description: nil, road: "an unmarked trail"}, # 48 131
  {nw_end: Location.find_by(name: "Midgewater Marshes").id, se_end: Location.find_by(name: "ER3").id, distance: "3.19205138471012", time: 191, description: nil, road: "an unmarked trail"} # 62 130
])

RouteWarning.create!([
  {route_segment_id: RouteSegment.where('nw_end = ? AND se_end = ?', Location.find_by(name: "Bamfurlong").id, Location.find_by(name: "Maggot's Lane/The Causeway").id)[0].id, text: "Farmer Maggot has trained dogs to deter the would-be mushroom thief"}, # 29, 37
  {route_segment_id: RouteSegment.where('nw_end = ? AND se_end = ?', Location.find_by(name: "Minas Morgul").id, Location.find_by(name: "Tower of Cirith Ungol").id)[0].id, text: "Here resides an evil thing in spider-form, the last child of Ungoliant to trouble the unhappy world, serving none but herself, drinking the blood of Elves and Men; all living things are her food and her vomit darkness."},
  {route_segment_id: RouteSegment.where('nw_end = ? AND se_end = ?', Location.find_by(name: "Edoras").id, Location.find_by(name: "Erech").id)[0].id, text: "No one walks this road safely. There is an army of dead here that allows no one to pass."}, # 86,89
  {route_segment_id: RouteSegment.where('nw_end = ? AND se_end = ?', Location.find_by(name: "Morannon").id, Location.find_by(name: "Isenmouthe").id)[0].id, text: "One does not simply walk into Mordor. It's black gates are guarded by more than just Orcs. There is an evil there that does not sleep; the Great Eye is ever watchful."}
])

# to update distances and times based on location coords
segments = RouteSegment.all
segments.each do |segment|
  loc1 = Location.find(segment["nw_end"])
  loc2 = Location.find(segment["se_end"])
  distance = loc1.distance_from(loc2["name"])
  segment["distance"] = distance
  segment["time"] = distance * 60
  if segment["time"] == 0
    segment["time"] = 1
  end
  segment.save
end

# def find_route(start_id,end_id,segments,endpoint1, endpoint2)
#   possible_routes = []
#   directions = []
#   starts = segments.select{ | segment | segment[endpoint1] == start_id || segment[endpoint2] == start_id }
#   starts.each do |start|
#     if start[endpoint1] == start_id
#       first_tail = start[endpoint2]
#     else
#       first_tail = start[endpoint1]
#     end
#     if first_tail == end_id
#       return {route: [start.id], tail: first_tail}
#     end
#     possible_routes << {route: [start.id], tail: first_tail}
#   end
#   route_achieved = false
#   while possible_routes != []
#     new_possible_routes = []
#     possible_routes.each do |curr_route|
#       nexts = segments.select{ | segment | segment[endpoint1] == curr_route[:tail] || segment[endpoint2] == curr_route[:tail] }
#       nexts.each do |next_step|
#         if next_step[endpoint1] === curr_route[:tail]
#           next_tail = next_step[endpoint2]
#         else
#           next_tail = next_step[endpoint1]
#         end
#         if next_tail == end_id
#           route_achieved = true
#         end
#         if !curr_route[:route].index(next_step.id) || curr_route[:route].index(next_step.id) < 0
#           updated_route = {route: curr_route[:route] << next_step.id, tail: next_tail}
#           if route_achieved == true
#             return updated_route
#           else
#             new_possible_routes << updated_route
#             curr_route[:route] = curr_route[:route][0..-2]
#           end
#         end
#       end
#     end
#     possible_routes = new_possible_routes
#   end
#   return "No route found."
# end

# segments = RouteSegment.all
# p find_route(22, 82, segments, "nw_end", "se_end")

# Map.find_by(level: "primary").update(image_url: "images/middle_maps.jpg")