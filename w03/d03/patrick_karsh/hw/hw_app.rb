require 'sinatra'
require 'sinatra/reloader'

get '/calculator' do 
	@num1 = num1
	@operator = operator
	@num2 = num2
	erb(:clac)
end

get '/magic_8_ball' do 
	erb(:magic_8_ball)
end 

get '/tip_calculator' do 
	@bill = bill
	@tip_percent = tip_percent
	erb(:tip_calculator)
end 

post '/numbers_for_calculation' do
	"#{params[:num1]} plus #{params[:num2]} = #{params[:num1].to_i + params[:num2].to_i} 
	<a href='/calculator'>Back</a>"
end 

post '/tip_calculation' do
	
  bill = params[:bill]
  tip_percent = params[:tip_percent]
end 
