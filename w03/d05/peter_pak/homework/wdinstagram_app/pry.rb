require 'active_record'
require 'pry'


# require_relative 'controllers/images.rb'
require_relative 'models/image.rb'


ActiveRecord::Base.establish_connection({
  database: 'wdinstagram_db',
  adapter: 'postgresql'
  })

binding.pry


image1 = Image.create({ author:"Orlando Magic", img_url:"http://i.cdn.turner.com/drp/nba/magic/sites/default/files/styles/main_gallery_photo__480_tall/public/comboshots1_1000_062814.jpg?itok=4gGKYosG", caption:"Victor Oladipo photobombs Aaron Gordon, Elfrid Payton and Roy Devyn Marble's rookie photoshoot.", date_posted:"June 28, 2014"})

image2 = Image.create({ author:"Will", img_url:"http://bakkerbugle.com/apps/wordpress/wp-content/uploads/2011/02/IMG_2073.jpg", caption:"food porn", date_posted:"03/03/2011"})
