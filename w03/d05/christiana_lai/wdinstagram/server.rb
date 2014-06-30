require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

require_relative 'controllers/images'

require_relative 'models/image'

ActiveRecord::Base.establish_connection({
  database: 'wdinstagram_db',
  adapter: 'postgresql'
  })

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  erb(:root)
end
