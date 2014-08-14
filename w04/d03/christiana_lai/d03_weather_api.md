Morning Exercise 04-03

#### Learning Objectives
- Practice making requests to a remote server
- Practice parsing an API response for data

# Nest 
###### A HAMco Product

![Imgur](http://i.imgur.com/Jyk1byf.png)

### Step 1 - 15 minutes

Read the documentation for the [Open Weather Map API](http://openweathermap.org/current). Find out how to make a request to their API, what parameters they accept, what response format to expect, and what information is supplied in the response. Use `curl` to view one of the example API requests.

### Step 2 - Implement the API

Define a route, `/`, that will make a request using __HTTParty__ to the Open Weather Map API based on a user search parameter. If there is no user search parameter then the default should be for NYC.

Create a form on the root route's view with a single input, a location, that when submitted will search the Open Weather Map API. The view should then display the current temperature of the location returned by the API in the `p` tag of the `div` with the `circle` class. The name of the location returned by the search should also be displayed on the page.