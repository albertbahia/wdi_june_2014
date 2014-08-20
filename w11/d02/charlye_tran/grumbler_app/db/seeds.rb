# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

names = %w(Francis Gadi Liza Eric Liz Alexandra Alexander Khadijah SeanT SeanJ Jon Charlye Peter Patrick Najee Fen Ranjan Christiana Hoa Albert Michael)

content = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium alias beatae qui, in ratione unde ex facilis quae, facere repudiandae dolor deleniti, error? Impedit, magnam, eos beatae culpa eveniet aperiam'

avatar = 'http://placecage.com/200/200'

title = %w(WOW OMG SUCH AMAZE)

names.each do |name|
  Grumble.create(author: name, title: title.sample(2).join(' '), content: content, avatar: avatar, )
end
