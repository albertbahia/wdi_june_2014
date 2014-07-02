require 'sinatra'
require 'sinatra/reloader'

require 'httparty'
require_relative './giphy'


get '/' do
	@urls = []
	search_term = "doge"
	api_call = Giphy.search(search_term)
	for i in (0..9) #change to 9 later
		@urls.push(api_call["data"][i]["images"]["fixed_height"]["url"])
	end
	erb(:index)
end

get '/search' do
	@urls = []
	search_term = params[:search]
	api_call = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=#{search_term}&api_key=dc6zaTOxFJmzC&limit=20")
	for i in (0..9) #change to 9 later
		@urls.push(api_call["data"][i]["images"]["fixed_height"]["url"])
	end
	erb(:index)
end

get '/kittens' do
	@urls = []
	api_call = HTTParty.get('http://api.giphy.com/v1/gifs/search?q=kittens&api_key=dc6zaTOxFJmzC&limit=20')
	for i in (0..9) #change to 9 later
		@urls.push(api_call["data"][i]["images"]["fixed_height"]["url"])
	end
	erb(:index)
end

get '/puppies' do
	@urls = []
	api_call = HTTParty.get('http://api.giphy.com/v1/gifs/search?q=puppies&api_key=dc6zaTOxFJmzC&limit=20')
	for i in (0..9) #change to 9 later
		@urls.push(api_call["data"][i]["images"]["fixed_height"]["url"])
	end
	erb(:index)
end

get '/pokemon' do
	@urls = []
	api_call = HTTParty.get('http://api.giphy.com/v1/gifs/search?q=pokemon&api_key=dc6zaTOxFJmzC&limit=20')
	for i in (0..9) #change to 9 later
		@urls.push(api_call["data"][i]["images"]["fixed_height"]["url"])
	end
	erb(:index)
end

get '/pandas' do
	@urls = []
	api_call = HTTParty.get('http://api.giphy.com/v1/gifs/search?q=pandas&api_key=dc6zaTOxFJmzC&limit=20')
	for i in (0..9) #change to 9 later
		@urls.push(api_call["data"][i]["images"]["fixed_height"]["url"])
	end
	erb(:index)
end
