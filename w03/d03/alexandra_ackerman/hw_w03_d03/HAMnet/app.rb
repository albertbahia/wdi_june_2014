require 'sinatra'
require 'sinatra/reloader'

magic_answer = ["It is certain",
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
  "Very doubtful"]

get '/' do
  erb(:home)
  redirect('/welcome')
end

get '/welcome' do
  erb(:welcome)
end

get '/calculator' do
  erb(:calculator)
end

get '/magic_eight_ball' do
  erb(:magic_eight_ball)
end

get '/tip_calculator' do
  erb(:tip_calculator)
end

get '/tip_calculator/:bill/:tip_percentage' do
  percentage = params[:tip_percentage].to_i * 0.01
  tip = params[:bill].to_i * percentage
  "You should tip $#{tip}
  <a href='/tip_calculator'>Back to Tip Calculator</a>"
end

post '/calculator' do
  number1 = params[:number1].to_i
  number2 = params[:number2].to_i
  operation = params[:operation].upcase

  if operation == "ADD"
    calculation = number1 + number2
  elsif operation == "SUBTRACT"
    calculation = number1 - number2
  elsif operation == "MULTIPLY"
    calculation = number1 * number2
  elsif operation == "DIVIDE"
    calculation = number1 / number2
  else calculation = "Oops! You did something wrong. Please try again."
  end
  "Your calculation is: #{calculation}. <a href='/calculator'>Back to Calculator</a>"
end

get '/magic_eight_ball/*' do
    random_answer = magic_answer.sample
    "#{params[:splat]}... #{random_answer}
    <a href='/magic_eight_ball'>Back to Magic Eight Ball</a>"
end
