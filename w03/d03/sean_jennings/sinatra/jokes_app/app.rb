require 'sinatra'
require 'sinatra/reloader'

get '/' do

  '<h1>Hello!</h1>'

end

get '/jokes' do

  '<h2>I dont know any jokes</h2>'

end

get '/:name' do

  "Hello #{params[:name]}"

end

get '/jokes/:name' do

  "Hey, #{params[:name]}, you ugly!"

end
