# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artists = [
  {
    name: 'Michaelangelo',
    photo_url: 'http://www.abcgallery.com/M/michelangelo/venusti1.JPG',
    nationality: 'Italy',
    birthday: 'March 6, 1475'
  },

  {
    name: 'Picasso',
    photo_url: 'http://www.masterworksfineart.com/images/artists_bio/picasso.jpg',
    nationality: 'Spain',
    birthday: 'October 25, 1881'
  },

  {
    name: 'Monet',
    photo_url: 'http://upload.wikimedia.org/wikipedia/commons/a/a4/Claude_Monet_1899_Nadar_crop.jpg',
    nationality: 'France',
    birthday: 'Novemeber, 14, 1840'
  }
]


paintings = [
  {
    img_url: 'http://upload.wikimedia.org/wikipedia/en/thumb/4/46/Sistine_chapel.jpg/320px-Sistine_chapel.jpg',
    title: 'Sistine Chapel ceiling',
    year_painted: '1512',
    description: 'Cornerstone of High Renaissance art.',
    artist_id: 1
  },

  {
    img_url: 'http://upload.wikimedia.org/wikipedia/en/7/74/PicassoGuernica.jpg',
    title: 'Guernica',
    year_painted: '1937',
    description: 'Shows the tragedies of war and suffering it inflicts upon individuals, particularly innocent civilians.',
    artist_id: 2
  },

  {
    img_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Claude_Monet_-_Jardin_%C3%A0_Sainte-Adresse.jpg/1024px-Claude_Monet_-_Jardin_%C3%A0_Sainte-Adresse.jpg',
    title: 'Garden at Sainte-Adresse',
    year_painted: '1867',
    description: 'A garden with a view of Honfleur on the horizon.',
    artist_id: 3
  }

]





# paintings = ['sistine chapel ceiling', 'guernica', 'Garden at Sainte-Adresse']

artists.each do |artist|
  Artist.create({
    name: artist[:name],
    photo_url: artist[:photo_url],
    nationality: artist[:nationality],
    birthday: artist[:birthday]
    })
end

paintings.each do |painting|
  Painting.create({
    img_url: painting[:img_url],
    title: painting[:title],
    year_painted: painting[:year_painted],
    description: painting[:description],
    artist_id: painting[:artist_id]
    })
end
