require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb(:home)
end

get '/calculator' do
  erb(:calculator)
end

get '/magic' do
  erb(:magic)
end

get '/tip' do
  erb(:tip)
end

get '/tip/:original_amount/:tip' do
  tip = params[:original_amount].to_f * (params[:tip].to_f / 100)
  "Your tip is $#{tip}.
  <p>A little stingy there, buddy?
  <p><a href='/tip'>Back</a>"
end

post '/add' do
  "#{params[:num1]} plus #{params[:num2]} = #{params[:num1].to_i + params[:num2].to_i}
  <p><a href='/calculator'>Calculator</a>"
end

post '/subtract' do
  "#{params[:num1]} minus #{params[:num2]} = #{params[:num1].to_i - params[:num2].to_i}
  <p><a href='/calculator'>Calculator</a>"
end

post '/multiply' do
  "#{params[:num1]} multiply #{params[:num2]} = #{params[:num1].to_i * params[:num2].to_i}
  <p><a href='/calculator'>Calculator</a>"
end

post '/divide' do
  "#{params[:num1]} divide #{params[:num2]} = #{params[:num1].to_i / params[:num2].to_i}
  <a href='/calculator'>Back</a>"
end

get '/magic/*' do
  question = params[:splat]
  answers = ["It is certain",
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
    "Your Question: #{question.shift.strip}
    <p> Magic 8 Ball Thinks: #{answers.sample}
    <p> <a href='/magic'>Back</a>"
end
