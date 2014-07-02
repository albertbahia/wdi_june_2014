
require 'sinatra'
require 'sinatra/reloader'

get '/' do 
	'Hello'
end

get '/jokes' do 
	"Isn't that funny?"
end

get '/:name' do |name|
	"Hello, #{{name}}"
end