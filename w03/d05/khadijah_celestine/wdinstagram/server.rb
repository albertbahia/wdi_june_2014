require 'pry'

require 'sinatra'
require 'sinatra/reloader'

require_relative './models/image.rb'

after do
	ActiveRecord::Base.connection.close
end

get '/' do
	"working"
end


binding.pry
