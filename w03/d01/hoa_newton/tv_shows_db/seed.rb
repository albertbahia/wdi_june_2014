require 'active_record'

#Connect to database
ActiveRecord::Base.establish_connection({
	database: 'tv_shows_db',
	adapter: 'postgresql'
	})

#Define the Show class
class Show < ActiveRecord::Base

end

#Insert information into that database
Show.create({
	name: 'Game Of Thrones',
	genre: 'fantasy',
	rating: 9,
	airing: true
})

Show.create({
	name: 'Lost',
	genre: 'fantasy',
	rating: 7,
	airing: false
})

Show.create({
	name: 'Breaking bad',
	genre: 'Horror',
	rating: 9,
	airing: true
})

Show.create({
	name: 'The Wire',
	genre: 'True story',
	rating: 8,
	airing: false
})

Show.create({
	name: 'Sesame Street',
	genre: 'Kids',
	rating: 5,
	airing: true
})

Show.create({
	name: 'The cooking',
	genre: 'Entertainment',
	rating: 8,
	airing: false
})
