require 'sinatra'
require 'sinatra/reloader'

magic_answers =[
  "It is certain", "It is decidedly so", "Without a doubt", "Yes definitely","You may rely on it", "As I see it yes", "Most likely", "Outlook good","Yes", "Signs point to yes", "Reply hazy try again", "Ask again later","Better not tell you now", "Cannot predict now", "Concentrate and ask again","Don't count on it", "My reply is no", "My sources say no","Outlook not so good", "Very doubtful"
]

magic_answer = magic_answers[rand(20)]

get '/' do
  erb(:welcome)
end

get '/calculator' do
  erb(:calculator)
end

get '/results' do
  erb(:results)
end

get '/magic_eight_ball' do
  erb(:magic_eight_ball)
end

get '/answer' do
  @magic_answer = magic_answer
  "<a href='/magic_eight_ball'>Back</a>"
  erb(:answer)
end

post '/magic_eight_ball' do
  "<a href='/magic_eight_ball'>Back</a>"
  redirect('/answer')
end

get '/tip_calculator' do
  erb(:tip_calculator)
end

post '/calculate_numbers' do
  if params[:operation] == "+"
    "#{params[:first_number].to_i + params[:second_number].to_i}
    <a href='/calculator'>Back</a>"
  elsif
    params[:operation] == "-"
      "#{params[:first_number].to_i - params[:second_number].to_i}
      <a href='/calculator'>Back</a>"
  elsif
    params[:operation] == "*"
      "#{params[:first_number].to_i * params[:second_number].to_i}
      <a href='/calculator'>Back</a>"
  elsif
    params[:operation] == "/"
      "#{params[:first_number].to_i / params[:second_number].to_i}
      <a href='/calculator'>Back</a>"
  end
end
