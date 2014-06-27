require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require './models/gifbomb'

get('/') do
  @api_call = GifBomb.search('cats')
  erb :root
end

get('/search') do
  search_term = params[:search]
  @api_call = GifBomb.search('search_term')
  erb :search
end

# # Load specific routes
# require_relative 'controllers/gifbomb'
#
#
# # Load models
# require_relative 'models/gifbomb'


# # Load Active Record and connect to the DB
# ActiveRecord::Base.establish_connection({
#   database: '   <insert database name as needed>  ',
#   adapter: 'postgresql'
# })

# Fix an issue with sinatra and Active Record where connections are left open
# after do
#   ActiveRecord::Base.connection.close
# end


####  General routes  ####


# get '/' do
#   erb(:home)
# end

# get '/about' do
#   erb(:about)
# end
