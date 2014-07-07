require 'sinatra'
require 'sinatra/reloader'

get '/' do
	'Hello'
end

get '/jokes' do
	'Here is a funny. Laugh.'
end

get '/jokes/:name' do
	"Hello #{params[:name]}! Laugh at my funny!"
end

get '/:name' do
	"Hello #{params[:name]}!"
end

def '/' do
	
end

def '/overview' do

end

def '/experience' do

end

def '/faq' do

end

def '/apply' do

end
