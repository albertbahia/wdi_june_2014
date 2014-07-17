require_relative './painting_data.rb'
require_relative './artist_data.rb'

Painting.destroy_all
Artist.destroy_all

painting_data = get_painting_data()
artist_data = get_artist_data()

painting_data.each_pair do |artist_name, paintings|

  info = artist_data[artist_name]
  current_artist = Artist.create!({
    name: info[:name],
    photo_url: info[:photo_url],
    nationality: info[:nationality],
    birthday: info[:birthday]
    })

  paintings.each do |painting|
    Painting.create!({
      title:            painting[:title],
      img_url:          painting[:img_url],
      year_painted:     painting[:year_painted],
      description:      painting[:description]
      })
  end
end
