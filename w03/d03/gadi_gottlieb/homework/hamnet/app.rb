require 'sinatra'
require 'sinatra/reloader'

magic_response = [
  "It is certain",
  "It is decidedly so",
  "Without a doubt",
  "Yes definitely",
  "You may rely on it",
  "As I see it yes",
  "Most likely",
  "Outlook good",
  "Yes",
  "Signs point to yes",
  "Reply hazy try again",
  "Ask again later",
  "Better not tell you now",
  "Cannot predict now",
  "Concentrate and ask again",
  "Don't count on it",
  "My reply is no",
  "My sources say no",
  "Outlook not so good",
  "Very doubtful"
  ]

get '/welcome' do
  erb(:welcome)
end

get '/calculator' do
  erb(:calculator)
end

get '/magic_8_ball' do
  erb(:magic_8_ball)
end

get '/tip_calculator' do
  erb(:tip_calculator)
end

get '/calculator-result' do

    if params[:math_operator] == '+'
      @result = params[:first_num].to_i + params[:second_num].to_i
    elsif params[:math_operator] == '-'
      @result = params[:first_num].to_i - params[:second_num].to_i
    elsif params[:math_operator] == '*'
      @result = params[:first_num].to_i * params[:second_num].to_i
    else params[:math_operator] ==  '/'
      @result = params[:first_num].to_i / params[:second_num].to_i
    end
  erb :calculator
end

get '/magic/*' do
  params[:splat]
end

get '/tip/:original_amount/:tip' do
tip = params[:original_amount].to_f / params[:tip].to_f
"Your tip is $#{tip}."
end




  # return basic_math
  # @math_operator = math_operator
