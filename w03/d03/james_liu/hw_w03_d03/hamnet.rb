require 'sinatra'
require'sinatra/reloader'
  
get '/welcome' do
    erb(:welcome)
end

get '/calc' do
    erb(:calc)
end

post '/calculate' do
   first_number = params[:first_number].to_i
   math_operation = params[:math_operation]
   second_number = params[:second_number].to_i
   
   case math_operation
      when '+'
      @result = first_number + second_number
      when '-'
      @result = first_number - second_number
      when '*'
      @result = first_number * second_number
      when '/'
      @result = first_number / second_number
    end
  
  redirect('/calc_results')
end

get '/calc_results' do
    erb(:calc_results)
end
