require 'sinatra'
require 'sinatra/reloader'

numbers_hash = []

get '/welcome' do
  erb(:welcome)
end

get '/calculator' do
  @numbers_list = numbers_hash
  erb(:calculator)
end

get '/magic' do
  erb(:magic)
end

get '/magic/:message' do
  "#{params[:message]}?"
  erb(:magic)
end

get '/tip_calculator' do
    erb(:tip_calculator)
end

get 'tip_calculator/:tip_dollar/:tip_cent' do
  "#{params[:tip_dollar]}?"
  # erb(:tip_calculator)
end

post '/calculator_results' do
  num1 = params[:first_number]
  operation = params[:operation]
  num2 = params[:second_number]
  new_numbers_hash = {
    number1: num1,
    operation: operation,
    number2: num2
  }

  numbers_hash << new_numbers_hash

  # num[:num2] = params[:second_number].to_s

  redirect('/calculator')
end
