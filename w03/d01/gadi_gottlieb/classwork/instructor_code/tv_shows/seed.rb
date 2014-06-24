# Require our new friend
require 'active_record'

# Connect to our database
ActiveRecord::Base.establish_connection({
  database: 'shows_db',
  adapter: 'postgresql'
})

# Define the Show class

class Show < ActiveRecord::Base
end

# Let's insert information into that database
Show.create({
  name: 'Game Of Thrones',
  genre: 'fantasy',
  rating: 9,
  airing: true
})
