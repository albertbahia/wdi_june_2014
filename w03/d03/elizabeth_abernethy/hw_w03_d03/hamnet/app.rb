require 'sinatra'
require 'sinatra/reloader'

magic_eight_ball = [
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

get '/' do
  erb(:home)
end

get '/welcome' do
  erb(:welcome)
end

get '/calculator' do
  erb(:calculator)
end

get '/magic' do
  erb(:magic)
end

get '/magic/*' do
  "Your question is: #{params[:splat]}? Your answer? #{magic_eight_ball.sample}. <a href='/magic'>Back to Magic 8 Ball</a>"
end

get '/tip_calc' do
  erb(:tip_calc)
end

get '/tip_calc/:int1/:int2' do
  percentage = params[:int2].to_i * 0.01
  tip = params[:int1].to_i * percentage
  "You should tip: $#{tip}. <a href='/tip_calc'>Back to Tip Calculator</a>"
end

post '/calculator' do
  num1 = params[:firstnum].to_i
  num2 = params[:secondnum].to_i

  if params[:operator] == "add"
    result = num1 + num2
  elsif params[:operator] == "subtract"
    result = num1 - num2
  elsif params[:operator] == "multiply"
    result = num1 - num2
  elsif params[:operator] == "divide"
    result = num1 / num2
  else
  end
  "Your result is #{result}. <a href='/calculator'>Back to Calculator</a>"
end


# post '/add' do
#   "add = #{params[:num1].to_i + params[:num2].to_i}
#   <a href='/calculator'>Back</a>"
# end
#
# post '/subtract' do
#   "subtract = #{params[:num1].to_i - params[:num2].to_i}
#   <a href='/calculator'>Back</a>"
# end
#
# post '/multiply' do
#   "multiply = #{params[:num1].to_i * params[:num2].to_i}
#   <a href='/calculator'>Back</a>"
# end
#
# post '/divide' do
#   "divide = #{params[:num1].to_i / params[:num2].to_i}
#   <a href='/calculator'>Back</a>"
# end
