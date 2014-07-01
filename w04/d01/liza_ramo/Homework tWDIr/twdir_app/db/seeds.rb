# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tweed_info = [

  {author: "Liza Ramo",
  content: "Boop",
  image_url: "http://media.giphy.com/media/Mf4NqZAknusBq/giphy.gif"},

  {author: "Liza Ramo",
  content: "More boops",
  image_url: "http://media.giphy.com/media/tSVOZpFpohGUM/giphy.gif"},

  {author: "Liza Ramo",
  content: "Camera boop",
  image_url: "http://media.giphy.com/media/rXpTFN44zGQCs/giphy.gif"},

  {author: "Liza Ramo",
  content: "The boop of death",
  image_url: "http://media.giphy.com/media/XwnOjVqPIlXGM/giphy.gif"},

  {author: "Liza Ramo",
  content: "Boop fight",
  image_url: "http://media.giphy.com/media/kfA2RBxAA1p4I/giphy.gif"},

  {author: "Liza Ramo",
  content: "Herlp!",
  image_url: "http://media.giphy.com/media/aGVvqGKFOXIvC/giphy.gif"},

  {author: "Liza Ramo",
  content: "Herrow?",
  image_url: "http://media.giphy.com/media/TKWFIsfAqvfoc/giphy.gif"},

  {author: "Liza Ramo",
  content: "Snugz",
  image_url: "http://media.giphy.com/media/5erBVeG51ZWp2/giphy.gif"},

  {author: "Liza Ramo",
  content: "Yawnz",
  image_url: "http://media.giphy.com/media/LZaA5gGjbUJOw/giphy.gif"},

  {author: "Liza Ramo",
  content: "I sitz",
  image_url: "http://media.giphy.com/media/gnUqgU5820KRi/giphy.gif"},

  {author: "Liza Ramo",
  content: "Sleepy Boop",
  image_url: "http://media.giphy.com/media/rRotdYNNaO3YY/giphy.gif"},

]

Tweed.destroy_all


tweed_info.each do |tweed|

  Tweed.create!({
      author: tweed[:author],
      content: tweed[:content],
      image_url: tweed[:image_url]
  })

end
