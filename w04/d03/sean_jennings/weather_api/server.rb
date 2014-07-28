require 'sinatra'
require 'sinatra/reloader'
require 'HTTParty'


get '/' do
  @api_call = HTTParty()
  erb(:home)
end
