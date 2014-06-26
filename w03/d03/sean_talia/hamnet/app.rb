require 'sinatra'
require 'sinatra/reloader'

magic_answers = ["It is certain",
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

get '/magic/:question' do
  @question = params[:question]
  @answer = magic_answers.sample
  erb(:magic_results)
end

get '/tip' do
  erb(:tip)
end

get '/tip/:amount/:pct' do
  @amount = params[:amount].to_f
  @pct = params[:pct].to_f
  @tip = (@pct / 100.to_f) * @amount
  erb(:tip_results)
end

get '/perform_calculation' do
  a = params[:first_no].to_i
  b = params[:second_no].to_i
  op = params[:operation]
  case op
  when '+'
    @calculation_result = a + b
  when '-'
    @calculation_result = a - b
  when '*'
    @calculation_result = a * b
  when '/'
    @calculation_result = a.to_f / b.to_f
  end
  erb(:perform_calculation)
end
