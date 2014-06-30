require 'sinatra'
require 'sinatra/reloader'
# require 'sinatra/css'
require 'active_record'

# Load specific routes
require_relative 'controllers/authors'
require_relative 'controllers/images'


# Load models
require_relative 'models/author'
require_relative 'models/image'


# Load Active Record and connect to the DB
ActiveRecord::Base.establish_connection({
  database: 'wdinstagram_db',
  adapter: 'postgresql'
})

# Fix an issue with sinatra and Active Record where connections are left open
after do
  ActiveRecord::Base.connection.close
end


####################
#  General routes  #
####################

get '/' do
  @images = Image.all
  @authors = Author.all
  erb(:home)
end

get '/about' do
  erb(:about)
end
