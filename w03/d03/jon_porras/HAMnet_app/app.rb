require 'sinatra'
require 'sinatra/reloader'

calc_result = []
prediction = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely","You may rely on it", "As I see it yes", "Most likely", "Outlook good","Yes", "Signs point to yes", "Reply hazy try again", "Ask again later","Better not tell you now", "Cannot predict now", "Concentrate and ask again","Don't count on it", "My reply is no", "My sources say no","Outlook not so good", "Very doubtful"]
tip_result = []

get '/welcome' do
  erb(:welcome)
end

get '/calculator' do
  @calc_result = calc_result
  erb(:calculator)
end

get '/magic_8_ball' do
 erb(:magic_8_ball)
end

get '/tip_calculator' do
  erb(:tip_calculator)
end

post '/calculate' do
  calc_result = []
    if params[:calc_choice] == "add"
      calc_result << params[:num1].to_i + params[:num2].to_i
    elsif params[:calc_choice] == "subtract"
      calc_result << params[:num1].to_i - params[:num2].to_i
    elsif params[:calc_choice] == "multiply"
      calc_result << params[:num1].to_i * params[:num2].to_i
    end
  redirect('/calculator')
end

get '/magic/:question' do
  @prediction = prediction.sample
  "<p>Your Question was: #{params[:question]}?</p><br>
  <p>The Magic 8 Ball says: #{@prediction}</p>
  <a href='/magic_8_ball'>BACK</a>"
end

get '/tip/:total/:tip_percent' do
  "<p>Total damage was $#{params[:total]}.</p>
  <p>You'd like to tip #{params[:tip_percent]}%.</p>
  <p>Your tip will be $#{(params[:total].to_i * (params[:tip_percent].to_i * 0.01)).round}.</p>
  <a href='/tip_calculator'>BACK</a>"
end
