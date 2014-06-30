require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'wdinstagram_db'
})

after do
  ActiveRecord::Base.connection.close
end

require_relative 'controllers/images'

require_relative 'models/image'

get '/' do
  @images = Image.all
  erb :"images/index"
end
