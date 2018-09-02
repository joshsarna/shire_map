/* global Vue, VueRouter, axios, jsGraphics */

var locationPage = {
  template: "#location-page",
  data: function() {
    return {
      location: {},
      synonymsExist: false
    };
  },
  created: function() {
    console.log(this.$route.params.id);
    //  + this.$route.params.id
    axios.get("/api/locations/" + this.$route.params.id).then(function(response) {
      console.log(response.data);
      this.location = response.data;
      if (this.location.synonyms.length > 0) {
        this.synonymsExist = true;
      }
    }.bind(this));
  },
  methods: {},
  computed: {}
};

var disclaimer = {
  template: "#disclaimer-page",
  data: function() {
    return {
      route: {}
    };
  },
  created: function() {},
  methods: {},
  computed: {}
};

var contact = {
  template: "#contact-page",
  data: function() {
    return {
      route: {}
    };
  },
  created: function() {},
  methods: {},
  computed: {}
};

var about = {
  template: "#about-page",
  data: function() {
    return {
      route: {}
    };
  },
  created: function() {},
  methods: {},
  computed: {}
};

var noRoute = {
  template: "#home-page",
  data: function() {
    return {
      locations: [],
      synonyms: [],
      mainMessage: "No Route Found",
      message: "\"There's [really] no knowing where you might be swept off to.\" ~ Bilbo Baggins",
      newRoute: {
        startLocationId: "",
        endLocationId: ""
      },
      route: {},
      location: "",
      locationUnfoundMessage: ""
    };
  },
  created: function() {
    axios.get('/api/locations').then(function(response) {
      this.locations = response.data;
    }.bind(this));
    axios.get('/api/synonyms').then(function(response) {
      this.synonyms = response.data;
    }.bind(this));
  },
  methods: {
    makeRoute: function() {
      console.log(this.newRoute);
      var parameters = {
        input_from: this.newRoute.startLocationId,
        input_to: this.newRoute.endLocationId
      };
      axios.post('/api/routes', parameters).then(function(response) {
        console.log(response.data.directions);
        this.route = response.data;
        router.push("/route");
      }.bind(this)).catch(function(response) {
        router.push("/noRoute");
      });
    },
    searchLocation: function() {
      var indexOfLocation = -1;
      for (var i = 0; i < this.locations.length; i++) {
        if (this.locations[i].name === this.location) {
          indexOfLocation = this.locations[i].id;
        }
      }
      if (indexOfLocation < 0) {
        this.locationUnfoundMessage = "Location Unknown";
      } else {
        router.push('/locations/' + indexOfLocation);
      }
    }
  },
  computed: {}
};

var route = {
  template: "#route-page",
  data: function() {
    return {
      message: "It's a dangerous business, Frodo, going out your door. You step onto the road, and if you don't keep your feet, there's no knowing where you might be swept off to.\" ~ Bilbo Baggins",
      imageUrl: "",
      route: {},
      startLocation: {},
      endLocation: {},
      mapSet: [],
      stepLines: [],
      time: 0,
      hours: 0,
      minutes: 0,
      warningsExist: false
    };
  },
  created: function() {
    // get the route
    axios.get('/api/routes/last').then(function(response) {
      console.log(response.data);
      this.route = response.data;
      this.imageUrl = this.route.map.image_url;

      // travel time
      this.time = this.route.time;
      console.log(this.time);
      console.log(this.time - Math.floor(this.time / 60) * 60);
      this.hours = Math.floor(this.time / 60);
      this.minutes = this.time - this.hours * 60;

      // route warnings
      if (this.route.warnings.length > 0) {
        this.warningsExist = true;
        console.log(this.warningsExist);
      }

      let routeStuff = document.createElement('script'); routeStuff.setAttribute('src',"route.js");
      document.body.appendChild(routeStuff);
    }.bind(this));
  },
  methods: {
    travelByEagle: function() {
      console.log("traveling by eagle");
      var x = document.getElementById("Canvas").children.length - 1;
      console.log(x);
      for (var i = 0; i < x; i ++) {
        console.log(document.getElementById("Canvas").children.length - 1);
        document.getElementById("Canvas").children[1].remove();
      }
      let routeStuff = document.createElement('script'); routeStuff.setAttribute('src',"eagle-route.js");
      document.body.appendChild(routeStuff);
      document.getElementById("eagleButton").innerText = "Eagle Route Shown";
      document.getElementById("footButton").innerText = "Travel by Foot";
    },
    travelByFoot: function() {
      console.log("traveling by foot");
      var x = document.getElementById("Canvas").children.length - 1;
      console.log(x);
      for (var i = 0; i < x; i ++) {
        console.log(document.getElementById("Canvas").children.length - 1);
        document.getElementById("Canvas").children[1].remove();
      }
      let routeStuff = document.createElement('script'); routeStuff.setAttribute('src',"route.js");
      document.body.appendChild(routeStuff);
      document.getElementById("eagleButton").innerText = "Travel by Eagle";
      document.getElementById("footButton").innerText = "Foot Route Shown";
    }
  },
  computed: {}
};

var BeleriandMapPage = {
  template: "#map-page",
  data: function() {
    return {
      message: "Worldview, in the Third Age",
      imageUrl: "images/Beleriand.jpg",
      newLocation: {
        id: 0,
        name: "",
        lat: 0,
        lng: 0,
        location_type: "site"
      },
      locations: []
    };
  },
  created: function() {
    axios.get('/api/locations').then(function(response) {
      this.locations = response.data;
    }.bind(this));
  },
  methods: {
    markThisSpot: function(event) {
      console.log("x: " + event.clientX);
      console.log("y: " + event.clientY);
      // console.log(this.newLocation.name);
      // if newLocation.name is the name of a location in this.locations
      this.locations.forEach(function(location) {
        if (location.name === this.newLocation.name) {
          this.newLocation = location;
        }
      }.bind(this));
      if (this.newLocation.name !== "") {
        this.newLocation.lat = (-0.005667 * event.clientY + 35.608117);
        this.newLocation.lng = (0.018101 * event.clientX - 122.185221);
        console.log("location: " + this.newLocation.name);
        console.log("lat: " + this.newLocation.lat);
        console.log("lng: " + this.newLocation.lng);
        // axios.patch('/api/locations/' + this.newLocation.id, this.newLocation).then(function(response) {
        //   console.log("Location has been updated.");
        // }.bind(this));
      } else {
        console.log("Location not found");
      }
      this.newLocation = {
        name: "",
        lat: 0,
        lng: 0,
        location_type: "site"
      };
    }
  },
  computed: {}
};

var middleEarthMapPage = {
  template: "#map-page",
  data: function() {
    return {
      message: "Middle Earth, in the Third Age",
      imageUrl: "http://donsmaps.com/images29/middleearthlargelargerstill.jpg",
      newLocation: {
        id: 0,
        name: "",
        lat: 0,
        lng: 0,
        location_type: "site"
      },
      locations: []
    };
  },
  created: function() {
    axios.get('/api/locations').then(function(response) {
      this.locations = response.data;
    }.bind(this));
  },
  methods: {
    markThisSpot: function(event) {
      console.log("x: " + event.clientX);
      console.log("y: " + event.clientY);
      // console.log(this.newLocation.name);
      // if newLocation.name is the name of a location in this.locations
      this.locations.forEach(function(location) {
        if (location.name === this.newLocation.name) {
          this.newLocation = location;
        }
      }.bind(this));
      if (this.newLocation.name !== "") {
        this.newLocation.lat = (-0.005667 * event.clientY + 35.608117);
        this.newLocation.lng = (0.018101 * event.clientX - 122.185221);
        console.log("location: " + this.newLocation.name);
        console.log("lat: " + this.newLocation.lat);
        console.log("lng: " + this.newLocation.lng);
        // axios.patch('/api/locations/' + this.newLocation.id, this.newLocation).then(function(response) {
        //   console.log("Location has been updated.");
        // }.bind(this));
      } else {
        console.log("Location not found");
      }
      this.newLocation = {
        name: "",
        lat: 0,
        lng: 0,
        location_type: "site"
      };
    }
  },
  computed: {}
};

var MapPage = {
  template: "#map-page",
  data: function() {
    return {
      message: "Welcome to Middle Earth!",
      imageUrl: "http://donsmaps.com/images29/middleearthlargelargerstill.jpg",
      newLocation: {
        id: 0,
        name: "",
        lat: 0,
        lng: 0,
        location_type: "site"
      },
      locations: []
    };
  },
  created: function() {
    axios.get('/api/locations').then(function(response) {
      this.locations = response.data;
    }.bind(this));
  },
  methods: {
    markThisSpot: function(event) {
      console.log("x: " + event.clientX);
      console.log("y: " + event.clientY);
      // console.log(this.newLocation.name);
      // if newLocation.name is the name of a location in this.locations
      this.locations.forEach(function(location) {
        if (location.name === this.newLocation.name) {
          this.newLocation = location;
        }
      }.bind(this));
      if (this.newLocation.name !== "") {
        this.newLocation.lat = (-0.036642 * event.clientY + 43.507119);
        this.newLocation.lng = (0.039865 * event.clientX - 126.989168);
        console.log("location: " + this.newLocation.name);
        console.log("lat: " + this.newLocation.lat);
        console.log("lng: " + this.newLocation.lng);
        // axios.patch('/api/locations/' + this.newLocation.id, this.newLocation).then(function(response) {
        //   console.log("Location has been updated.");
        // }.bind(this));
      } else {
        console.log("Location not found");
      }
      this.newLocation = {
        name: "",
        lat: 0,
        lng: 0,
        location_type: "site"
      };
      // else
      // send a post request to create a location at those coordinates with the name of newLocation.name and the location_type of site
      // this.newLocation.lat = (-0.000137 * event.clientY + 34.213661);
      // this.newLocation.lng = (0.00091 * event.clientX - 118.246286);
      // axios.post('/api/locations', this.newLocation).then(function(response) {
      // this.newLocation = {
      //   name: "",
      //   lat: 0,
      //   lng: 0
      // };
      // }.bind(this));
      // end
    }
  },
  computed: {}
};

var HomePage = {
  template: "#home-page",
  data: function() {
    return {
      locations: [],
      synonyms: [],
      mainMessage: "Explore Middle Earth",
      message: "\"It's a dangerous business, [...] going out your door. You step onto the road, and if you don't keep your feet, there's no knowing where you might be swept off to.\" ~Bilbo Baggins",
      newRoute: {
        startLocationId: "",
        endLocationId: ""
      },
      route: {},
      location: "",
      lodging: "",
      locationUnfoundMessage: ""
    };
  },
  created: function() {
    axios.get('/api/locations').then(function(response) {
      this.locations = response.data;
    }.bind(this));
    // axios request to get synonyms
    axios.get('/api/synonyms').then(function(response) {
      this.synonyms = response.data;
    }.bind(this));
  },
  methods: {
    makeRoute: function() {
      console.log(this.newRoute);
      var parameters = {
        input_from: this.newRoute.startLocationId,
        input_to: this.newRoute.endLocationId
      };
      axios.post('/api/routes', parameters).then(function(response) {
        console.log(response.data.directions);
        this.route = response.data;
        router.push("/route");
      }.bind(this)).catch(function(response) {
        router.push("/noRoute");
      });
    },
    searchLocation: function() {
      var indexOfLocation = -1;
      for (var i = 0; i < this.locations.length; i++) {
        if (this.locations[i].name === this.location) {
          indexOfLocation = this.locations[i].id;
        }
      }
      if (indexOfLocation < 0) {
        for (var n = 0; n < this.synonyms.length; n++) {
          if (this.synonyms[n].name === this.location) {
            indexOfLocation = this.synonyms[n].location_id;
          }
        }
        if (indexOfLocation < 0) {
          this.locationUnfoundMessage = "Location Unknown";
        } else {
          router.push('/locations/' + indexOfLocation);
        }
      } else {
        router.push('/locations/' + indexOfLocation);
      }
    }
  },
  computed: {}
};

var router = new VueRouter({
  routes: [
    { path: "/", component: HomePage },
    { path: "/map", component: MapPage },
    { path: "/shireMap", component: MapPage },
    { path: "/middleEarthMap", component: middleEarthMapPage },
    { path: "/mapOfBeleriand", component: BeleriandMapPage },
    { path: "/route", component: route },
    { path: "/noRoute", component: noRoute },
    { path: "/about", component: about },
    { path: "/contact", component: contact },
    { path: "/disclaimer", component: disclaimer },
    { path: "/locations/:id", component: locationPage }
  ],
  scrollBehavior: function(to, from, savedPosition) {
    return { x: 0, y: 0 };
  }
});

var app = new Vue({
  el: "#vue-app",
  router: router,
  watch: {
    '$route': function() {
      window.location.reload();
    }
  }
});
