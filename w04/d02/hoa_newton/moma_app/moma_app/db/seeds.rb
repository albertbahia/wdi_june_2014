# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require_relative './artist_data.rb'
require_relative './painting_data.rb'

Painting.destroy_all
Artist.destroy_all

painting_data = get_painting_data()
artist_data = get_artist_data()

artist_data.each do |artist, info|
	Artist.create!({
	name: info[:name],
	photo_url: info[:photo_url],
	birthday: info[:birthday]
	})
end

painting_data.each do |painting, info|
	Painting.create!({
		img_url: info[:image_url],
		title: info[:title],
		year_painted: info[:year_painted],
		description: info[:description]
		artist_id: Artist.all.map(&:id).sample
		})
end
