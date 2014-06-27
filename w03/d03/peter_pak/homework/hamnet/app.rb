require 'sinatra'
require 'sinatra/reloader'



magic_question = ["Question"]

# def calculation(first, second, operation)
#   @calculated = []
#   a = first.to_i
#   b = second.to_i
#   case operation
#   when "+"
#     @calculated = [a + b]
#   when "-"
#     @calculated = [a - b]
#   when "x"
#     @calculated = [a * b]
#   when "&divide;"
#     @calculated = [a / b]
#   end
# end

magic_answers = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely","You may rely on it", "As I see it yes", "Most likely", "Outlook good","Yes", "Signs point to yes", "Reply hazy try again", "Ask again later","Better not tell you now", "Cannot predict now", "Concentrate and ask again","Don't count on it", "My reply is no", "My sources say no","Outlook not so good", "Very doubtful"]


# array_for_math = [
#   {first_num: "0"},
#   {operation: "+"},
#   {second_num: "2"}
# ]

get '/' do
  redirect('/welcome')
end

get '/welcome' do
  erb(:welcome)
end


get '/calculator' do
  erb(:calculator)
end

post '/add_to_calc' do
  @first_num = params[:first_num].to_i
  @second_num = params[:second_num].to_i
  @operation = params[:operation]
  erb(:calculated)
  # redirect('/calculator')
  # calculate(first_num, second_num, operation)
  # @math_array = array_for_math
  # case params[:operation]
  # when "+"
  #   @calculated = [(params[:first_num].to_i) + (params[:second_num].to_i)]
  # when "-"
  #   @calculated = [(params[:first_num].to_i) - (params[:second_num].to_i)]
  # when "x"
  #   @calculated = [(params[:first_num].to_i) * (params[:second_num].to_i)]
  # when "&divide;"
  #   @calculated = [(params[:first_num].to_i) / (params[:second_num].to_i)]
  # end
end

get '/calculated' do
  erb(:calculated)
end

get '/magic/*' do
  @magic_question = magic_question
  @magic_question << params[:splat]
  @magic_question.each { |question|
   return question.capitalize}
  @magic_answers = magic_answer
  @magic_answers.sample.to_s
end

get '/magic_8_ball' do
  erb(:magic_8_ball)
end

post '/magic_question' do
  @magic_question = magic_question
  @magic_question << [params[:magic]]
  redirect('/magic_answer')
end

get '/magic_answer' do
  @magic_answers = magic_answers
  @magic_question = magic_question
  erb(:magic_answer)
end

get '/tip_calc' do
  erb(:tip_calc)
end

get '/tip_calc/:int1/:int2' do
  percentage = params[:int2].to_i * 0.01
  tip = params[:int1].to_i * percentage
  "Tip this much: $#{tip}.<br> <a href='/tip_calc'>calculate more tips</a>"
end
