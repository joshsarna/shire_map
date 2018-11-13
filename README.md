# README

Visit the live app at middle-maps.herokuapp.com

--

One of the main challenges in building this app was the acquisition of data. There are surprisingly few robust Lord of the Rings APIs in existence, and most revolve around the movie trilogy rather than Tolkien’s epic itself. My data is scavenged from the books and, on certain occasions, from academic commentary thereon.

One of my goals in creating this, though, was to make my API available for future projects. My routes are RESTful, and my backend is api name-spaced, so data can be accessed fairly intuitively:

https://middle-maps.herokuapp.com/api/locations   # => an array of all locations

https://middle-maps.herokuapp.com/api/locations/1008  # => a single location

https://middle-maps.herokuapp.com/api/route_segments  # => an array of all route segments (which connect locations)

NOTE: all coordinates are based around a Bag End in Pasadena, CA.