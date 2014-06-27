require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Hellooooooo (￣^￣)ゞ"
end


get '/jokes' do
  "<p>Just read that 4,153,237 people got married last year.</p>
  <p>Not to cause any trouble, but shouldn't that be an even number?</p>"
end

get '/:name' do
  "<h1>Hello there, friend #{params[:name].capitalize}."
end

get '/jokes/:name' do
  "<h1>#{params[:name].capitalize}'s momma is so fat that when she goes to the beach the whales sing 'We are family!'</h1>"
end

# * Set up a route `GET '/'` that returns a hello message
# * Create a custom route `GET '/jokes'` that returns a joke
# * Create a custom route `GET '/:name'` that returns a personalized hello message
# * Create a custom route `GET '/jokes/:name'` that returns a personalized joke
