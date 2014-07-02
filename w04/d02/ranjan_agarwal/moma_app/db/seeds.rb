# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
Painting.destroy_all

artist_data = {
  "Pablo Picasso" => {
      name:  "Pablo Picasso",
      photo_url: "http://www.webzeest.com/articleimages/8f14e45fce_1387197164696Pablo_Picasso_por_Arnold_Newman.jpg",
      nationality: "Spain",
      birthday: "October 25th 1881"
    },
  "Vincent Van Gogh" => {
    name: "Vincent Van Gogh",
    photo_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Van_Gogh_Self-Portrait_with_Straw_Hat_1887-Metropolitan.jpg/1280px-Van_Gogh_Self-Portrait_with_Straw_Hat_1887-Metropolitan.jpg",
    nationality: "Netherlands",
    birthday: "March 30th 1853"
  },
  "Claude Monet" => {
    name: "Claude Monet",
    photo_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Claude_Monet_1899_Nadar_crop.jpg/1024px-Claude_Monet_1899_Nadar_crop.jpg",
    nationality: "France",
    birthday: "November 14th 1840"
  }
}

painting_data = {
  "Pablo Picasso" => [{
    :img_url => "http://upload.wikimedia.org/wikipedia/en/3/36/Pablo_Picasso%2C_1909%2C_Femme_assise_%28Sitzende_Frau%29%2C_oil_on_canvas%2C_100_x_80_cm%2C_Staatliche_Museen_zu_Berlin%2C_Neue_Nationalgalerie.jpg",
    :title => "Femme assise",
    :year_painted => "1909",
    :description => " oil on canvas, 100 × 80 cm, Staatliche Museen, Neue Nationalgalerie, Berlin"
    },
  {
    :img_url => "http://upload.wikimedia.org/wikipedia/en/c/ca/Pablo_Picasso%2C_1910-11%2C_Guitariste%2C_La_mandoliniste%2C_Woman_playing_guitar%2C_oil_on_canvas.jpg",
    :title => "Guitariste, La mandoliniste",
    :year_painted => "1911",
    :description => "Oil on canvas"
    },
  {
    :img_url => "http://upload.wikimedia.org/wikipedia/en/8/8f/Pablo_Picasso%2C_1909-10%2C_Figure_dans_un_Fauteuil_%28Seated_Nude%2C_Femme_nue_assise%29%2C_oil_on_canvas%2C_92.1_x_73_cm%2C_Tate_Modern%2C_London.jpg",
    :title => "Figure dans un Fauteuil",
    :year_painted => "1910",
    :description => "oil on canvas, 92.1 × 73 cm, Tate Modern, London. This painting from the collection of Wilhelm Uhde was confiscated by the French state and sold at the Hôtel Drouot in 1921"
    }],
  "Vincent Van Gogh" => [{
    :img_url => "http://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Vincent_Willem_van_Gogh_128.jpg/220px-Vincent_Willem_van_Gogh_128.jpg",
    :title => "Still Life: Vase with Twelve Sunflowers",
    :year_painted => "1888",
    :description => "Neue Pinakothek, Munich"
    },
  {
    :img_url => "http://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Vincent_Willem_van_Gogh_015.jpg/1280px-Vincent_Willem_van_Gogh_015.jpg",
    :title => "The Café Terrace on the Place du Forum, Arles, at Night",
    :year_painted => "1888",
    :description => "Kröller-Müller Museum, Otterlo, The Netherlands"
    },
  {
    :img_url => "http://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Vincent_Willem_van_Gogh_138.jpg/212px-Vincent_Willem_van_Gogh_138.jpg",
    :title => "Van Gogh's Chair",
    :year_painted => "1888",
    :description => "National Gallery, London"
    }],
  "Claude Monet" => [{
    :img_url => "http://upload.wikimedia.org/wikipedia/commons/4/44/Monet%2C_Claude_-_View_At_Rouelles%2C_Le_Havre_%281858%29.jpg",
    :title => "View at Rouelles",
    :year_painted => "1858",
    :description => "an early work showing the influence of Corot and Courbet"
    },
  {
    :img_url => "http://upload.wikimedia.org/wikipedia/commons/4/42/Claude_Monet_-_Mouth_of_the_Seine.jpg",
    :title => "Mouth of the Seine at Honfleur",
    :year_painted => "1865",
    :description => " Norton Simon Foundation, Pasadena, CA; indicates the influence of Dutch maritime painting."
    },
  {
    :img_url => "http://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Claude_Monet_024.jpg/1280px-Claude_Monet_024.jpg",
    :title => "Women in a Garden",
    :year_painted => "1867",
    :description => " Pola Museum of Art, Japan"
    }]
}

painting_data.each do |artist_name, paintings|

  info = artist_data[artist_name]
  current_artist = Artist.create!({
    name:        info[:name],
    photo_url:   info[:photo_url],
    nationality: info[:nationality],
    birthday:    info[:birthday]
  })

  paintings.each do |painting|
    Painting.create!({
      img_url:      painting[:img_url],
      title:        painting[:title],
      year_painted: painting[:year_painted],
      artist_id:    current_artist.id,
      description:  painting[:description]
    })
  end
end
