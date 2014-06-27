require 'sinatra'
require 'sinatra/reloader'

ball_answers = [
"It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
"You may rely on it", "As I see it yes", "Most likely", "Outlook good", "Yes",
"Signs point to yes", "Reply hazy try again", "Ask again later",
"Better not tell you now", "Cannot predict now",
"Concentrate and ask again","Don't count on it", "
My reply is no", "My sources say no","Outlook not so good", "Very doubtful"
]

result = 0

get '/welcome' do
  erb(:home)
end

get '/calc' do
  erb(:calc)
end

get '/magic' do
  erb(:magic)
end

get '/tipcalc' do
  erb(:tip)
end

post '/calc_result' do
  @result = result
  erb(:result)
end

get '/:question' do
  @ball_answers = ball_answers
  erb(:magic_result)
  "<p>You asked: #{params[:question].capitalize}?</p>"
end
