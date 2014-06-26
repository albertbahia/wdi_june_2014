require 'sinatra'
require 'sinatra/reloader'

math_stuff = {}
result = nil

get '/' do
  erb :home
end

get '/calculator' do
  erb :calculator
end

get '/calculator_answer' do
  @math_stuff = math_stuff
  erb :calculator_answer
end

get '/magic_8_ball' do
  erb :magic_8_ball
end

get '/tip_calculator' do
  erb :tip_calculator
end

get '/tip/:paid/:percent' do
  @paid = params[:paid]
  @percent = params[:percent]
  @tip = params[:paid].to_i * (params[:percent].to_i * 0.01)
  erb :tip
end

get '/magic_8_ball/:question' do
  @answers = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely","You may rely on it", "As I see it yes", "Most likely", "Outlook good","Yes", "Signs point to yes", "Reply hazy try again", "Ask again later","Better not tell you now", "Cannot predict now", "Concentrate and ask again","Don't count on it", "My reply is no", "My sources say no","Outlook not so good", "Very doubtful"]
  @question = params[:question]
  erb :magic_8_ball_answer
end

post '/calc_math' do
  math_stuff[:first] = params[:first_num]
  math_stuff[:op] = params[:operation]
  math_stuff[:second] = params[:second_num]

  case params[:operation]
  when "+" then result = params[:first_num].to_i + params[:second_num].to_i
  when "-" then result = params[:first_num].to_i - params[:second_num].to_i
  when "x" then result = params[:first_num].to_i * params[:second_num].to_i
  when "/" then result = params[:first_num].to_i / params[:second_num].to_i
  end

  math_stuff[:result] = result.to_s


  redirect('/calculator_answer')
end
