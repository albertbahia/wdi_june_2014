require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'

# controllers
require_relative 'controllers/posts'

# models
require_relative 'models/post'
require_relative 'models/user'

ActiveRecord::Base.establish_connection({
  database: 'wdinstagram_db',
  adapter: 'postgresql'
})

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  erb :home
end
