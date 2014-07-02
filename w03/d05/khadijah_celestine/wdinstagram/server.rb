require 'pry'

require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

require_relative './models/image.rb'
require_relative './models/user.rb'

require_relative './controllers/image.rb'
require_relative './controllers/user.rb'

after do
	ActiveRecord::Base.connection.close
end

#index
get '/' do
	redirect '/images'
	@images = Image.all
	erb(:"images/index")
end
