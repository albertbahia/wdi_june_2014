require 'sinatra'
require 'sinatra/reloader'

get('/welcome') do
  erb :welcome
end
get('/calculator') do
  erb :calculator
end

get('/magic') do 
  erb :magic
end

get('/tipcalculator') do 
  erb :tip_calculator
end

get('/calculator-result') do
  first_num = params[:first].to_i
  second_num = params[:second].to_i

  case params[:operator]
  when 'add'
    @result = first_num + second_num
  when 'subtract'
    @result = first_num - second_num
  when 'multiply'
    @result = first_num * second_num
  when 'divide'
    @result = first_num / second_num
  end
  erb :calculator_result
end

get('/magic/:question') do
  @question = params[:question] + "?"
  @answer = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
     "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
     "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
     "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
     "Don't count on it", "My reply is no", "My sources say no",
     "Outlook not so good", "Very doubtful"].sample 
  erb :magic_answer
end

get('/tipcalculator/:amount/:percent') do 
  @amount = params[:amount].to_i
  @percent = ("0." + params[:percent]).to_f
  @tip = @amount * @percent
  erb :tip_result
end