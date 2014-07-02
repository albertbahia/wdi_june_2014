# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

authors = ['Leonard','Penny','Raj','Howard','Bernadette','Sheldon','Amy','Stuart','Kripke','Wil Wheaton']

contents = ['This is the Leonard tweed!','This is the Penny tweed!','This is the Raj tweed!','This is the Howard tweed!','This is the Bernadette tweed!','This is the Sheldon tweed!','This is the Amy tweed!','This is the Stuart tweed!','This is the Kripke tweed!','This is the Wil Wheaton tweed!']

image_urls = ['http://upload.wikimedia.org/wikipedia/en/7/77/Leonard_Hofstadter.jpg','http://www.dumpaday.com/wp-content/uploads/2013/01/oh-look-penny-funny-big-bang-theory.jpg','http://www.remotepatrolled.com/wp-content/uploads/2013/03/Raj-Koothrappali-The-Big-Bang-Theory.jpg', 'http://thebigbangtheoryfansite.com/wp-content/uploads/2013/02/Howard-Wolowitz-the-big-bang-theory.jpg']


authors.each do |author|
  Tweed.create({
    author: author,
    content: contents.sample,
    image_url: image_urls.sample
    })
end





# tweeds = Tweed.create[
#   {
#     author: 'Leonard',
#     content: 'This is the Leonard tweed!',
#     image_url: 'http://upload.wikimedia.org/wikipedia/en/7/77/Leonard_Hofstadter.jpg'
#   },
#
#   {
#     author: 'Penny',
#     content: 'This is the Penny tweed!',
#     image_url: 'http://www.dumpaday.com/wp-content/uploads/2013/01/oh-look-penny-funny-big-bang-theory.jpg'
#   },
#
#   {
#     author: 'Raj',
#     content: 'This is the Raj tweed!',
#     image_url: 'http://www.remotepatrolled.com/wp-content/uploads/2013/03/Raj-Koothrappali-The-Big-Bang-Theory.jpg'
#   },
#
#   {
#     author: 'Howard',
#     content: 'This is the Howard tweed!',
#     image_url: 'http://thebigbangtheoryfansite.com/wp-content/uploads/2013/02/Howard-Wolowitz-the-big-bang-theory.jpg'
#   },
#
#   {
#     author: 'Bernadette',
#     content: 'This is the Bernadette tweed!',
#     image_url: 'http://wonderifyouwonder.files.wordpress.com/2012/03/the-big-bang-theory-melissa-rauch-1.jpg'
#   },
#
#   {
#     author: 'Sheldon',
#     content: 'This is the Sheldon tweed!',
#     image_url: 'http://l.yimg.com/os/publish-images/tv/2013-12-06/6a251153-38b0-4f7c-8fd5-cb3048ddce3d_tv-character-gifts-01-sheldon-cooper.jpg'
#   },
#
#   {
#     author: 'Amy',
#     content: 'This is the Amy tweed!',
#     image_url: 'http://img2.wikia.nocookie.net/__cb20111225141719/bigbangtheory/images/5/51/Amy-farrah-fowler_187317.png'
#   },
#
#   {
#     author: 'Stuart',
#     content: 'This is the Stuart tweed!',
#     image_url: 'http://img1.wikia.nocookie.net/__cb20120315183720/bigbangtheory/images/6/69/Twv-_Stuart.jpg'
#   },
#
#   {
#     author: 'Kripke',
#     content: 'This is the Kripke tweed!',
#     image_url: 'http://images.wikia.com/villains/images/archive/3/30/20110116012432!Barry_Kripke.jpg'
#   },
#
#   {
#     author: 'Wil Wheaton',
#     content: 'This is the Wil Wheaton tweed!',
#     image_url: 'http://img2.wikia.nocookie.net/__cb20111018151758/bigbangtheory/images/1/16/814808b869b6f6cab80.jpg'
#   }
#   ]
