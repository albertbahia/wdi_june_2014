require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require_relative './controllers/photos_controller'
require_relative './models/photo'

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'wdinstagram_db'
  })

get('/') do 
  redirect('/photos')
end

after {ActiveRecord::Base.connection.close}