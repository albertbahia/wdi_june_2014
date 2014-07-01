require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

# load specific routes
require_relative 'controllers/images'

# load models
require_relative 'models/image'

ActiveRecord::Base.establish_connection({
  database: 'wdi_instagram_db',
  adapter: 'postgresql'
})

after do
  ActiveRecord::Base.connection.close
end


# home
get('/') do
  erb :home
end
