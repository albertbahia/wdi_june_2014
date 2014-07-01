require 'sinatra'
require 'sinatra/reloader'
value = []
op = ""
eight_ball = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely","You may rely on it", "As I see it yes", "Most likely", "Outlook good","Yes", "Signs point to yes", "Reply hazy try again", "Ask again later","Better not tell you now", "Cannot predict now", "Concentrate and ask again","Don't count on it", "My reply is no", "My sources say no","Outlook not so good", "Very doubtful"]

tips =  []

get '/welcome' do
  erb(:welcome)
end

get '/' do
  erb(:home)
end

get '/calculator' do
  @cal_value = value
  @op_cal = op
  erb(:calculator)
  # redirect('/calculator')
end

get '/magic_8_ball/*' do
  @eight_ball_q = eight_ball
  erb(:magic_8_ball)
  # redirect('/magic_8_ball')
end

get '/tip_calculator/*' do
  tips = params[:splat].join.split('/')
  @tips_cal = tips
  erb(:tip_calculator)
  # redirect('/tip_calculator')
end

post '/calculate' do
  value = []
  op = ""
  value << params[:value1].to_i
  value << params[:value2].to_i
  op = params[:operation]
  redirect('/calculator')
end
