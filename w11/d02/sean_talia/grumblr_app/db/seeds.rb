names = %w(Francis Gadi Liza Eric Liz Alexandra Alexander Khadijah SeanT SeanJ Jon Charlye Peter Patrick Najee Fen Ranjan Christiana Hoa Albert Michael)

content = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium alias beatae qui, in ratione unde ex facilis quae, facere repudiandae dolor deleniti, error? Impedit, magnam, eos beatae culpa eveniet aperiam'

avatar = 'http://placecage.com/200/200'

title = %w(WOW OMG SUCH AMAZE)

names.each do |name|
  Grumble.create(author: name, title: title.sample(2).join(' '), content: content, avatar: avatar, )
end