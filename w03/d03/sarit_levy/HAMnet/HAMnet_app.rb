require 'sinatra'
require 'sinatra/reloader'


  get '/' do
    erb(:home)
  end

  get '/welcome' do
    erb(:welcome)
  end

  get '/calculator' do
    erb(:calculator)
  end


get '/magic_8_ball' do
  "To Come..."
end


get '/tip_calculator' do
  "To Come..."
end
