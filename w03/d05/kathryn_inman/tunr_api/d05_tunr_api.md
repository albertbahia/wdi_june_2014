# When Tun.r met an API

**FEATURE ALERT**

When creating a new song, a user should be able to search the iTunes store
for songs, view search results, and add search results directly to the Tun.r
library, to facilitate the process of music curation.

We're going to achieve this by using the
[iTunes API](https://www.apple.com/itunes/affiliates/resources/documentation/itunes-store-web-service-search-api.html)

#### Your Prompt

* Put your search form on the songs#new page

* The search form should submit data to a GET route on your server
  (eg. GET '/songs/search')
  ____________




* This route will need to
  * Talk to iTunes through the iTunes API
  * Generate an HTML page with the results
  * Send that page back to the user

* The results page should
  * List the search results
  * Have a button 'Add to Tun.r' next to each song that will add the song to the
    Tun.r database
    when clicked

* If the artist of the song to be added does not exist in the Tun.r database,
  then a new artist will be created

**BONUS**

Allow users to search for and add artists in the same manner.
