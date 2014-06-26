require 'sinatra'
require 'sinatra/reloader'



get '/welcome' do
    erb(:welcome)
end

get '/calculator' do
  erb(:calculator)
end

get '/magic8ball' do
  erb(:magic8ball)
end

get '/tipcalculator' do
  erb(:tipcalculator)
end

post '/calculations' do

end
