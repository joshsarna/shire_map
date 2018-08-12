/* global Vue, VueRouter, axios */

var MapPage = {
  template: "#map-page",
  data: function() {
    return {
      message: "Welcome to Middle Earth!",
      imageUrl: "http://corecanvas.s3.amazonaws.com/theonering-0188db0e/gallery/original/shire_map.jpg",
      newLocation: {
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
      // console.log("x: " + event.clientX);
      // console.log("y: " + event.clientY);
      // console.log(this.newLocation.name);
      // if newLocation.name is the name of a location in this.locations
      this.locations.forEach(function(location) {
        if (location.name === this.newLocation.name) {
          // console.log(location);
          // send a patch request to change the coordinates of that location
          this.newLocation = location;
          this.newLocation.lat = (-0.000137 * event.clientY + 34.213661);
          this.newLocation.lng = (0.00091 * event.clientX - 118.246286);
          console.log(this.newLocation.lat);
          console.log(this.newLocation.lng);
          axios.patch('/api/locations/' + this.newLocation.id, this.newLocation).then(function(response) {
            this.newLocation = {name: ""};
          }.bind(this));
        }
      }.bind(this));
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
      }.bind(this));
    }
  },
  computed: {}
};

var router = new VueRouter({
  routes: [
    { path: "/", component: HomePage },
    { path: "/map", component: MapPage }
  ],
  scrollBehavior: function(to, from, savedPosition) {
    return { x: 0, y: 0 };
  }
});

var app = new Vue({
  el: "#vue-app",
  router: router
});