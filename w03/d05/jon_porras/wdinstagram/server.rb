require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

#load specific routes
require_relative 'controllers/images'

#load model
require_relative 'models/image'

ActiveRecord::Base.establish_connection({
  database: 'wdinstagram_db',
  adapter: 'postgresql'
})

#fix an issue with sinatra and active record where connections are left open
after do
  ActiveRecord::Base.connection.close
end
