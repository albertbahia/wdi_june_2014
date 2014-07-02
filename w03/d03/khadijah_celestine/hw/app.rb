require 'sinatra'
require 'sinatra/reloader'

featured_songs = ["Khad", "ijah", "Cele", "stine"]
artists = ["one", "two", "three", "four", "five"]
early_access_list = [{name: "Stan", email: "yessir"}]
answers = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely","You may rely on it", "As I see it yes", "Most likely", "Outlook good","Yes", "Signs point to yes", "Reply hazy try again", "Ask again later","Better not tell you now", "Cannot predict now", "Concentrate and ask again","Don't count on it", "My reply is no", "My sources say no","Outlook not so good", "Very doubtful"]

get '/' do
	@early_access_list = early_access_list
	erb(:home)
end

get '/welcome' do
	erb(:welcome)
end

get '/calculator' do
	erb(:calculator)
end

post '/maths' do
	@num1 = params[:num1].to_i
	@maths = params[:maths]
	@num2 = params[:num2].to_i
	erb(:maths)
	#redirect('/calculator')
end

get '/magic8' do
	erb(:magic8)
end

get '/magic8/*' do
	@param = params[:splat]
	@answer = answers.sample
	erb(:magic8)
	#erb(:magic8)
end

get '/tip' do
	erb(:tip)
end

get '/tip/*' do
	@amt = params[:splat][0].split('/')[0].to_i #150
	@percent = params[:splat][0].split('/')[1].to_i #50
	@total = @amt * ( @percent / 100.0 )
	erb(:tip)
	#erb(:magic8)
end

get '/songs' do
	@featured_songs = featured_songs
	erb(:songs)
end

get '/artists' do
	@artists = artists
	erb(:artists)
end

post '/add_to_list' do
	early_access_list.push({:name => params[:full_name], :email => params[:email]})
	redirect('/')
	#params.to_s
end

post '/add_song' do
	featured_songs.push(params[:song])
	redirect('/songs')
end

post '/add_artist' do
	artists.push(params[:artist])
	redirect('/artists')
end
