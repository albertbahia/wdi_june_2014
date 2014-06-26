# Write a Ruby application that will allow users to
# View all shows
# View shows of a genre
# View shows higher than a particular rating
# View shows that are airing
# BONUS
# Create a new show
# Get rid of a show
# Update the rating of a show


require 'active_record'
require 'pry'


ActiveRecord::Base.establish_connection({
  database: 'tv_shows_db',
  adapter: 'postgresql'
  })


class Show < ActiveRecord::Base

# View all shows
  puts '                 '
  puts '    ALL SHOWS    '
  puts ' ________________'
  # puts Show.all  #This returns an array of show objects so need to include .each
  Show.all.each do |show|
      puts show.name
    end

# Get all drama shows
  puts '                 '
  puts '   DRAMA SHOWS   '
  puts ' ________________'
  Show.where({ genre: 'drama' }).each do |show|
    puts show.name
  end

#Get all shows with rating == 9
  puts '                    '
  puts '   RATING 9 SHOWS   '
  puts ' ___________________'
  Show.where({ rating: 9 }).each do |show|
    puts show.name
  end

#Get all airing shows
  puts '                      '
  puts '   ALL AIRING SHOWS   '
  puts ' _____________________'
  Show.where({ airing: true }).each do |show|
    puts show.name
  end

end
