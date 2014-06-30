require 'sinatra'
require 'sinatra/reloader'

get "/" do 
  erb(:home)
end

get "/welcome" do 
  erb(:welcome)
end

get "/calculator" do 
  erb(:calculator)
end

result = 0

post "/result" do 
  @result = result
	first_num = params[:first_number]
	second_num = params[:second_number]
	if form.field_with(:name => 'Math_Operator').options[0].click
		result = first_number - second_number
		return result
	# elsif 
	erb(:result)
	end
end