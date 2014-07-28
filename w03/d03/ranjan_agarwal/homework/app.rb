require 'sinatra'
require 'sinatra/reloader'

def calculate
  first = params[:first_number].to_i
  operation = params[:operation]
  second = params[:second_number].to_i
  total = nil


end

magic_ball = [
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
  erb(:welcome)
end

get '/calculator' do
  erb(:calculator)
end

post '/add' do
  "#{params[:num1]} plus #{params[:num2]} = #{params[:num1].to_i + params[:num2].to_i}
  <a href='/calculator'>Back</a>"
end

post '/subtract' do
  "#{params[:num1]} minus #{params[:num2]} = #{params[:num1].to_i - params[:num2].to_i}
  <a href='/calculator'>Back</a>"
end

post '/multiply' do
  "#{params[:num1]} multiply #{params[:num2]} = #{params[:num1].to_i * params[:num2].to_i}
  <a href='/calculator'>Back</a>"
end

post '/divide' do
  "#{params[:num1]} divide #{params[:num2]} = #{params[:num1].to_i / params[:num2].to_i}
  <a href='/calculator'>Back</a>"
end

get '/magic_ball' do
  erb(:magic_ball)

end

get '/magic_ball/*' do
  question = params[:splat]
  "#{question.shift.strip.capitalize} & #{magic_ball.sample} <a href='/magic_ball'>Back</a>"
end


# get '/magic_ball/*' do
#   "#{params.shift.strip]}
#   #{magic_ball.sample}
#   <a href='/magic_ball'>Back</a>
#   "
# end

get '/tip' do
  erb(:tip)

end

get '/tip/:total/:percent' do
  tip = (( params[:percent].to_f) * (params[:total].to_f)/100)
   "$#{tip} <a href='/tip'>Back</a>"
end
post '/calculate' do



end
