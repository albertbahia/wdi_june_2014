require 'sinatra'
require 'sinatra/reloader'
require 'httparty'


get '/' do
  Weather.search(params['search'])
end
