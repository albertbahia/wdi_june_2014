require 'active_record'
require 'pry'
require 'sinatra'
require 'sinatra/reloader'

require_relative 'controllers/images.rb'

require_relative 'models/image.rb'

ActiveRecord::Base.establish_connection({
  database: 'wdinstagram_db',
  adapter: 'postgresql'
  })

  after do
    ActiveRecord::Base.connection.close
  end

get '/' do
  erb(:index)
end
