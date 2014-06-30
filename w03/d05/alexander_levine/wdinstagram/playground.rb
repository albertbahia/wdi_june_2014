require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'wdinstagram_db'
})

require_relative 'models/image'

binding.pry
