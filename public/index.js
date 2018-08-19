/* global Vue, VueRouter, axios */

var route = {
  template: "#route-page",
  data: function() {
    return {
      message: "Welcome to Middle Earth!",
      imageUrl: "http://donsmaps.com/images29/middleearthlargelargerstill.jpg",
      route: {}
    };
  },
  created: function() {
    axios.get('/api/routes/last').then(function(response) {
      this.route = response.data;
    }.bind(this));
  },
  methods: {},
  computed: {}
};

var middleEarthMapPage = {
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
        this.newLocation.lat = (-0.005667 * event.clientY + 35.608117);
        this.newLocation.lng = (0.018101 * event.clientX - 122.185221);
        console.log("location: " + this.newLocation.name);
        console.log("lat: " + this.newLocation.lat);
        console.log("lng: " + this.newLocation.lng);
        axios.patch('/api/locations/' + this.newLocation.id, this.newLocation).then(function(response) {
          console.log("Location has been updated.");
        }.bind(this));
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
      imageUrl: "http://corecanvas.s3.amazonaws.com/theonering-0188db0e/gallery/original/shire_map.jpg",
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
        this.newLocation.lat = (-0.000293 * event.clientY + 34.233968);
        this.newLocation.lng = (0.000401 * event.clientX - 118.251203);
        console.log("location: " + this.newLocation.name);
        console.log("lat: " + this.newLocation.lat);
        console.log("lng: " + this.newLocation.lng);
        axios.patch('/api/locations/' + this.newLocation.id, this.newLocation).then(function(response) {
          console.log("Location has been updated.");
        }.bind(this));
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
      //   this.newLocation = {
      //     name: "",
      //     lat: 0,
      //     lng: 0
      //   };
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
      message: "Welcome to Middle Earth!",
      newRoute: {
        startLocationId: "",
        endLocationId: ""
      },
      route: {}
    };
  },
  created: function() {},
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
      }.bind(this));
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
    { path: "/route", component: route }
  ],
  scrollBehavior: function(to, from, savedPosition) {
    return { x: 0, y: 0 };
  }
});

var app = new Vue({
  el: "#vue-app",
  router: router
});