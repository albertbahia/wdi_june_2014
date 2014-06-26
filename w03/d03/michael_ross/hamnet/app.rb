require 'sinatra'
require 'sinatra/reloader'

calculator_results = [

]

answers = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely","You may rely on it", "As I see it yes", "Most likely", "Outlook good","Yes", "Signs point to yes", "Reply hazy try again", "Ask again later","Better not tell you now", "Cannot predict now", "Concentrate and ask again","Don't count on it", "My reply is no", "My sources say no","Outlook not so good", "Very doubtful"
]

get '/' do
  erb(:welcome)
end

get '/calculator' do
  erb(:calculator)
end

get '/calculator_results' do
  @calculator_results = calculator_results
  erb(:calculator_results)
end

get '/magic8ball' do
  erb(:magic8ball)
end

get '/tipcalculator' do
  erb(:tipcalculator)
end


post '/use_calculator' do
  if params[:calc_operator] == "+"
    calculator_results << params[:first_num].to_i + params[:second_num].to_i
  elsif params[:calc_operator] == "-"
    calculator_results << params[:first_num].to_i - params[:second_num].to_i
  elsif params[:calc_operator] == "*"
    calculator_results << params[:first_num].to_i * params[:second_num].to_i
  elsif params[:calc_operator] == "/"
    calculator_results << params[:first_num].to_i / params[:second_num].to_i
  end
  redirect('/calculator')
end

post '/magic8ball/:question' do
  @answers = answers.sample
  "<p>Your question was: #{params[:question]}?</p>
  <p>The magic 8 ball says: #{@answers}</p>
  <a href="/magic8ball">Ask Another</a>""
end
