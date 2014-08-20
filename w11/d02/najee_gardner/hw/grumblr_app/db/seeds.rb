# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

grumbles = [
  {author: 'Bruce', content: 'Where is she?', title: 'Questionaire', image: 'http://placekitten.com/200/300', avatar: 'http://placekitten.com/200/300'},
  {author: 'Alfred', content: 'What is it that I may do for you, sir?', title: 'Service', image: 'http://placekitten.com/200/300', avatar: 'http://placekitten.com/200/300'},
  {author: 'Snake', content: 'We are all guns of war. There is no denying it.', title: 'Who are we?', image: 'http://placekitten.com/200/300', avatar: 'http://placekitten.com/200/300'},
  {author: 'Sonic', content: 'Sonic is my name and speed is my game.', title: 'Interview', image: 'http://placekitten.com/200/300', avatar: 'http://placekitten.com/200/300'},
  {author: 'Leonard', content: 'I don\'t rememeber what happened 5 mins ago, but I must have left a tattoo about it somewhere.', title: 'Searching', image: 'http://placekitten.com/200/300', avatar: 'http://placekitten.com/200/300'},
  {author: 'Clark', content: 'Don\'t tell Louis who I really am. That would be bad.', title: 'Secrets', image: 'http://placekitten.com/200/300', avatar: 'http://placekitten.com/200/300'},
  {author: 'Bob', content: 'I own a burger shop that I run along with my family. Good times.', title: 'Life', image: 'http://placekitten.com/200/300', avatar: 'http://placekitten.com/200/300'},
  {author: 'Link', content: '', title: '', image: 'http://placekitten.com/200/300', avatar: 'http://placekitten.com/200/300'},
  {author: 'Walt', content: 'I want to build the most magical place on Earth, and the perfect location is in the middle of Swamp land.', title: 'Location', image: 'http://placekitten.com/200/300', avatar: 'http://placekitten.com/200/300'},
  {author: 'Sora', content: 'Friendship is definitely something that lasts forever through the good and the bad.', title: 'Adventure', image: 'http://placekitten.com/200/300', avatar: 'http://placekitten.com/200/300'},
  {author: 'Walter', content: 'My family needs to be taken care of no matter what. I need to do what I have to do.', title: 'Regrets', image: 'http://placekitten.com/200/300', avatar: 'http://placekitten.com/200/300'},
  {author: 'Dorothy', content: 'I really really really don\'t think we\'re in Kansas anymore.', title: 'Where am I?', image: 'http://placekitten.com/200/300', avatar: 'http://placekitten.com/200/300'},
  {author: 'Alice', content: 'So I fell down this hole and I discovered something totally amazing and frightening at the same time.', title: 'This place', image: 'http://placekitten.com/200/300', avatar: 'http://placekitten.com/200/300'},
  {author: 'Draco', content: 'My family is so Evil. I really don\'t want a life like theirs.', title: 'Questionaire', image: 'http://placekitten.com/200/300', avatar: 'http://placekitten.com/200/300'},
  {author: 'Hagrid', content: 'You are most definitely a wizard Harry.', title: 'Origins', image: 'http://placekitten.com/200/300', avatar: 'http://placekitten.com/200/300'},
  {author: 'Buzz', content: 'To infinity and beyond. At least that is what I think.', title: 'Questionaire', image: 'http://placekitten.com/200/300', avatar: 'http://placekitten.com/200/300'},
  {author: 'Woody', content: 'You\'ve got a friend in me for sure. Sorry for all the trouble I caused in the beginning', title: 'New Friends', image: 'http://placekitten.com/200/300', avatar: 'http://placekitten.com/200/300'},
  {author: 'Tony', content: 'Jarvis, what time is my date with that chick we met at that party?', title: 'Score', image: 'http://placekitten.com/200/300', avatar: 'http://placekitten.com/200/300'},
  {author: 'Jony', content: 'The new Macbook is made with the finest aluminum there is one the market.', title: 'Mackbooks', image: 'http://placekitten.com/200/300', avatar: 'http://placekitten.com/200/300'},
  {author: 'SpongeBob', content: 'I never get an order wrong. Test me and you will see. I\'m ready.', title: 'Fry Cook', image: 'http://placekitten.com/200/300', avatar: 'http://placekitten.com/200/300'}
]

grumbles.each do |grumble|
  Grumble.create!(grumble)
end
