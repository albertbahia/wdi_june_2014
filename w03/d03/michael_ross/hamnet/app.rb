require 'sinatra'
require 'sinatra/reloader'

calculator_results = [

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

get '/magic' do
  erb(:magic)
end

get '/magic/:question' do
  @question = params[:question] + "?"
  @answers = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely","You may rely on it", "As I see it yes", "Most likely", "Outlook good","Yes", "Signs point to yes", "Reply hazy try again", "Ask again later","Better not tell you now", "Cannot predict now", "Concentrate and ask again","Don't count on it", "My reply is no", "My sources say no","Outlook not so good", "Very doubtful"
  ]
  erb(:magicanswer)
end


get '/tipcalculator' do
  erb(:tipcalculator)
end


post '/use_calculator' do
  first = params[:first_num].to_i
  second = params[:second_num].to_i
  if params[:calc_operator] == "+"
    calculator_results << first + second
  elsif params[:calc_operator] == "-"
    calculator_results << first - second
  elsif params[:calc_operator] == "*"
    calculator_results << first * second
  elsif params[:calc_operator] == "/"
    calculator_results << first / second
  end
  puts @calculator_results
  redirect('/calculator_results')
end

post '/magic/:question' do
  "Your question was: #{params[:question]}"
  "The magic 8 ball says: #{@answers}</p>"
  redirect('/magicanswer')
end

get '/tipcalculator/:amount/:percentage' do
  @amount = params[:amount].to_i
  @percentage = ("0." + params[:percentage]).to_f
  @tip = @amount * @percentage
  erb(:tipresult)
end
