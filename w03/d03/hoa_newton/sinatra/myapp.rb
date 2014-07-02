
require 'sinatra'
require 'sinatra/reloader'

get '/' do # I am a server and if i get a Get request then do this
  '<h1>Hello world! Again</h1>'
end

get '/about' do
	'This is my first sinatra app'
end

get '/welcome/:name' do |name|
	"Welcome! #{name}"
end