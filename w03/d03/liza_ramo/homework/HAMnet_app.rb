require 'sinatra'
require 'sinatra/reloader'

calculator = { }

# def super_calc(first_num, math_operation, second_num)
#   if user_input == "add"
#     first_num + second_num
#
# end




get '/' do
  erb(:welcome)
end

get '/welcome' do
  erb(:welcome)
end

get '/calculator' do
  erb(:calculator)
end

get '/magic8ball' do
  erb(:magic8ball)
end

get '/tip_calculator' do
  erb(:tip_calculator)
end

post '/add' do
  "The result of your math problem is: #{params[:first_number]} + #{params[:second_number]} = #{params[:first_number].to_i + params[:second_number].to_i}"
end

post '/subtract' do
  "The result of your math problem is: #{params[:first_number]} - #{params[:second_number]} = #{params[:first_number].to_i - params[:second_number].to_i}"
end

post '/multiply' do
  "The result of your math problem is: #{params[:first_number]} * #{params[:second_number]} = #{params[:first_number].to_i * params[:second_number].to_i}"
end

post '/divide' do
  "The result of your math problem is: #{params[:first_number]} / #{params[:second_number]} = #{params[:first_number].to_i / params[:second_number].to_i}"
end
