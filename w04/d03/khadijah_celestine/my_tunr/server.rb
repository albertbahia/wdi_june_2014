require 'sinatra'
require 'sinatra/reloader'
require 'httparty'


get '/' do
	@city = 'New York'
	response = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?q=NewYork,us')
  tmp = response["main"]["temp"].to_i - 273.15
  @tmp_c = (tmp*20).round / 20.0
  @tmp_f = @tmp_c * 9 / 5 + 32
  erb(:home)
end
get '/:city' do
	@city = params[:city].capitalize
	response = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?q=@city')
	tmp = response["main"]["temp"].to_i - 273.15
	@tmp_c = (tmp*20).round / 20.0
	@tmp_f = @tmp_c * 9 / 5 + 32
	erb(:home)
end
