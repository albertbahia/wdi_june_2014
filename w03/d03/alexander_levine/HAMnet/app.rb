require 'sinatra'
require 'sinatra/reloader'

num_1 = nil
operator = nil
num_2 = nil
calculation = nil

magic_answers = [
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

answer = nil
question = nil

bill_amount = nil
tip_percentage = nil
tip_amount = nil



get '/' do
  redirect('/welcome')
end

get '/welcome' do
  erb(:welcome)
end

get '/calculator' do
  erb(:calculator)
end

get '/magic_8_ball' do
  @magic_answers = magic_answers
  @question = question
  @answer = answer
  erb(:magic_8_ball)
end

get '/tip_calculator' do
  erb(:tip_calculator)
end

get '/tip_calc_result' do
  @bill_amount = bill_amount
  @tip_percentage = tip_percentage
  @tip_amount = tip_amount
  erb(:tip_calc_result)
end

get '/calculation' do
  @num_1 = num_1
  @operator = operator
  @num_2 = num_2
  @calculation = calculation
  erb(:calculation)
end

get '/magic_8_ball/:question' do
  @magic_answers = magic_answers
  @question = question
  @answer = answer
  question = params[:question]
  answer = @magic_answers.sample
  redirect('/magic_8_ball')
end

get '/tip_calculator/:total/:tip_percentage' do
  @bill_amount = bill_amount
  @tip_percentage = tip_percentage
  @tip_amount = tip_amount
  bill_amount = params[:total].to_i
  tip_percentage = params[:tip_percentage].to_i
  tip_amount = bill_amount * tip_percentage / 100
  redirect('/tip_calc_result')
end

post '/calculate' do
  num_1 = params[:num_1].to_i
  operator = params[:operator]
  num_2 = params[:num_2].to_i

  if operator.to_s == "*"
    calculation = params[:num_1].to_i * params[:num_2].to_i
  elsif operator.to_s == "+"
    calculation = params[:num_1].to_i + params[:num_2].to_i
  elsif operator.to_s == "-"
    calculation = params[:num_1].to_i - params[:num_2].to_i
  elsif operator.to_s == "/"
    calculation = params[:num_1].to_i / params[:num_2].to_i
  end
  redirect('/calculation')
end
