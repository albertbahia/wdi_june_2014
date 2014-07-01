# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


names = %w(Louis Lewis Sara Taylor Rei Ray Fen Nerd Fedora Gabe Tommy)

contents = %w(Understanding that Rails is omakase Don't worry if you've played Rails for Zombies before you get to start fresh with new achievements means accepting that many of the opinions enshrined in the Rails API are the decisions of a Benevolent Dictator for Life informed by discussion with other developers who have made significant contributions to the Rails code base For the most part Heinemeier Hansson’s opinions will serve you well)

kitten = ['http://placekitten.com/400/400', 'http://upload.wikimedia.org/wikipedia/commons/d/dd/Big_dog_military_robots.jpg', 'http://www.bostondynamics.com/img/BigDog_Snow.png', 'http://t2.gstatic.com/images?q=tbn:ANd9GcSGYMzbPLtKck5uM6JW46jppkJH1ib-N-HhNLJVU_0qvJP-l0Tp', 'http://bbsimg.ngfiles.com/1/17635000/ngbbs48e962e9a8d85.jpg', 'http://eti.ru/uploads/posts/old/1154056657_mopdog.jpg', 'http://rhgallery.co.uk/wp-content/uploads/2013/09/IMG_5489.jpg', 'http://37.media.tumblr.com/tumblr_lzg1olJeLV1qd9dz2o1_500.jpg', 'http://www.pop-culture.biz/play/0377TF.jpg']

time_stamp = Time.now


20.times do
  Tweed.create({author: names.sample, content: contents.sample(10).join(" "), image_url: kitten.sample, timestamp: time_stamp})
end
