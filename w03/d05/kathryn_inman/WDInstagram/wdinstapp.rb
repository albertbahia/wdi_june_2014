require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

require_relative 'controllers/images'

require_relative 'models/image'
require_relative 'models/user'


ActiveRecord::Base.establish_connection({
  database: 'wdinsta_db',
  adapter: 'postgresql'
})

after do
  ActiveRecord::Base.connection.close
end


get '/' do
  erb(:home)
end
