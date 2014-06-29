require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb(:home)
end

num1 = nil
num2 = nil
operand = nil

question = nil

answers = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely","You may rely on it", "As I see it yes", "Most likely", "Outlook good","Yes", "Signs point to yes", "Reply hazy try again", "Ask again later","Better not tell you now", "Cannot predict now", "Concentrate and ask again","Don't count on it", "My reply is no", "My sources say no","Outlook not so good", "Very doubtful"]

get '/calculator' do
  erb(:calculator)
end

get '/magic_8_ball' do
  erb(:magic_8_ball)
end

get '/magic/:question' do
  question = params[:question]
  @answers = answers
end

get '/tip_calculator' do
  erb(:tip_calculator)
end

get '/tip/:total/:percentage' do
  "Total: #{params[:total]} / Percentage tip: #{params[:percentage]}"
  tip_amount = params[:total].to_i*(params[:percentage].to_i/100)
  puts "Tip amount = #{tip_amount}"
end

post '/add_to_calculator' do
  num1 = params[:num1]
  operand = params[:operand]
  num2 = params[:num2]
end
