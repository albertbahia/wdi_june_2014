# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Grumble.destroy_all

authors = ['Encyclopedia Brown', 'Murphy Brown', 'Charlie Brown', 'James Brown']
content = ["The streets love Jeezy and I love em back
If I still had work I'd front ya sack",
           "Sweeter than a swisher",
           "No one man should have all that power",
           "It's not your fault",
           "Psycho: I'm liable to go Michael, take your pick: Jackson, Tyson, Jordan, Game 6",
           "She said, 'Ye, can we get married at the mall?' I said, 'Look, you need to crawl before you ball'"]
titles = ['Heard It Through The Grapevine', 'Just My Imagination', 'My Girl', 'Aint Too Proud to Beg']
images = ['http://www.fillmurray.com/200/300', 'http://www.fillmurray.com/300/200', 'http://www.fillmurray.com/300/300', 'http://www.fillmurray.com/400/600']


20.times do
  Grumble.create({
    author: authors.sample,
    content: content.sample,
    title: titles.sample,
    image: images.sample,
    avatar: 'http://placepic.me/avatars/100-100-sketch'})
end
