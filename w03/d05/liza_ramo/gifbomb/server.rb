require 'httparty'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @giphy_call = []
  10.times do
    @giphy_call << HTTParty.get('http://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC')
  end
  erb(:root)
end

# Mck's:
# get '/' do
#   @api_call = HTTParty.get('')['data']
#   erb :root
# end

get('/search') do
  search_term = params[:search]
