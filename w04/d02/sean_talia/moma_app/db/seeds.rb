# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

paintings_array = [
    {title: "The Luxembourg Gardens",
    image_url: "http://upload.wikimedia.org/wikipedia/en/thumb/b/bf/Matisse_-_Luxembourg_Gardens_%281901%29.jpg/800px-Matisse_-_Luxembourg_Gardens_%281901%29.jpg",
    year_painted: 1902,
    description: "Lots of purple"
    },
    {title: "Nude (Carmelita)",
    image_url: "http://upload.wikimedia.org/wikipedia/en/a/ac/Henri_Matisse%2C_1904%2C_Nu_%28Carmelita%29%2C_oil_on_canvas%2C_81.3_x_59_cm%2C_Museum_of_Fine_Arts%2C_Boston.jpg",
    year_painted: 1904,
    description: "Nude woman sitting on bed"
    },
    {title: "Bouquet",
    image_url: "http://upload.wikimedia.org/wikipedia/en/0/0b/Henri_Matisse%2C_1917-18%2C_Fleurs_%28Bouguet%29%2C_oil_on_canvas%2C_139.7_x_102.2_cm%2C_San_Diego_Museum_of_Art.jpg",
    year_painted: 1918,
    description: "Green and pink bouqet of flowers in a vase."
    },
    {title: "No. 15",
    image_url: "http://www.angel-art-house.com/upload/ProductImg/RTK29%20No%2015%201958.jpeg",
    year_painted: 1958,
    description: "Orange, green, and blue blocks"
    },
    {title: "No. 16 1960 Orange Purple",
    image_url: "http://www.angel-art-house.com/oil_painting_details.aspx?ID=2037",
    year_painted: 1960,
    description: "Orange and purple blocks"
    },
    {title: "292 Untitled 1947",
    image_url: "http://www.angel-art-house.com/upload/ProductImg/RTK5%20292%20UNTITLED%201947.jpeg",
    year_painted: 1947,
    description: "Ugly"
    },
    {title: "Crying Girl",
    image_url: "http://upload.wikimedia.org/wikipedia/en/8/82/Crying_Girl_%28enamel%29.jpg",
    year_painted: 1964,
    description: "Blonde girl crying"
    },
    {title: "Masterpiece",
    image_url: "http://upload.wikimedia.org/wikipedia/en/5/53/Masteripiece.jpg",
    year_painted: 1962,
    description: "Small talk"
    },
    {title: "Varoom!",
    image_url: "http://upload.wikimedia.org/wikipedia/en/e/e2/Varoom%21-Lichtenstein.jpg",
    year_painted: 1963,
    description: "Kablooie"
    },
  ]

artists_array = [
  {name: "Henri Matisse",
  photo_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Portrait_of_Henri_Matisse_1933_May_20.jpg/640px-Portrait_of_Henri_Matisse_1933_May_20.jpg",
  nationality: "France",
  birthday: "1869-12-31",
  },
  {name: "Mark Rothko",
  photo_url: "http://upload.wikimedia.org/wikipedia/en/d/d0/Photo_of_Mark_Rothko_by_James_Scott_in_1959.jpg",
  nationality: "U.S.A.",
  birthday: "1903-09-25",
  },
  {name: "Roy Lichtenstein",
  photo_url: "http://upload.wikimedia.org/wikipedia/en/4/4f/Roy_Lichtenstein.jpg",
  nationality: "U.S.A.",
  birthday: "1923-10-27",
  },
]

paintings_array.each do |painting|
    Painting.create!(painting)
  end

artists_array.each do |artist|
    Artist.create!(artist)
  end

Artist.find(1).paintings << Painting.find(1) << Painting.find(2) << Painting.find(3)
Artist.find(2).paintings << Painting.find(4) << Painting.find(5) << Painting.find(6)
Artist.find(3).paintings << Painting.find(7) << Painting.find(8) << Painting.find(9)
