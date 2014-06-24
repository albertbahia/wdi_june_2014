require 'active_record'
require 'pry'
require_relative 'lib/author.rb'
require_relative 'lib/book.rb'

ActiveRecord::Base.establish_connection({
  database: 'biblio_db',
  adapter: 'postgresql'
})

binding.pry
