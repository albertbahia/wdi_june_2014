require 'sinatra'
require 'sinatra/reloader'
require_relative 'models/coin_desk'





get '/' do
  erb(:bitcoin)
end
