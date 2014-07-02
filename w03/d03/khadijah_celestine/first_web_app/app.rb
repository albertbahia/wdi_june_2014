require 'sinatra'
require 'sinatra/reloader'

get '/hello/:name' do
  # matches "GET /hello/foo" and "GET /hello/bar"
  # params[:name] is 'foo' or 'bar'
  "Hello #{params[:name]}!"
end

get '/about' do
	'<h1>Khadijah is having too much fun right now!</h1>'
end
