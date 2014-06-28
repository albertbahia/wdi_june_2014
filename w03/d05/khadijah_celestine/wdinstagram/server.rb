require 'pry'

require 'sinatra'
require 'sinatra/reloader'

require_relative './models/image.rb'

after do
	ActiveRecord::Base.connection.close
end

#index
get '/' do
	@images = Image.all
	erb(:index)
end

#index


#show
get '/images/:id' do
	@image = Image.find(params[:id])
	erb(:show)
end
