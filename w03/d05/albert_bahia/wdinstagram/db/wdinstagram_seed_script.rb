require_relative '../models/author.rb'
require_relative '../models/image.rb'
require 'pry'



# ---Seed authors table-----
author_names = %w(Sheldon Leonard Raj Howard Penny)
ages = [28, 30, 27, 26, 25]
cities = ['Pasadena', 'San Francisco', 'San Diego']

author_names.each do |name|
  Author.create({
    name: name,
    age: ages.sample,
    city: cities.sample,
    state: 'CA'
})
end

image_url = "http://d3dsacqprgcsqh.cloudfront.net/photo/177979_700b.jpg"

caption = "This works!"

Image.create({
  img: image_url,
  post_date: '',
  caption: caption
  })


binding.pry
