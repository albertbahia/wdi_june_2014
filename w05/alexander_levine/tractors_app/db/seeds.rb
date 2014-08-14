# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Tractor.destroy_all

Tractor.create({
  img_url: 'http://upload.wikimedia.org/wikipedia/commons/0/0e/Ueberladewagen_(jha).jpg',
  model: 'UeberLadeWagen',
  price: 19999,
  rating: 4
})

Tractor.create({
  img_url: 'http://www.deere.com/common/media/images/product/tractors/utility_tractors/6d_series/6100d/r4c003650_rrd_6d_642x462.png',
  model: 'Deere Tractor',
  price: 12999,
  rating: 3
})

Tractor.create({
  img_url: 'http://upload.wikimedia.org/wikipedia/commons/1/1b/Wallis_tractor-001.jpg',
  model: 'Wallis Tractor',
  price: 15000,
  rating: 3
})

Tractor.create({
  img_url: 'http://littlefarmyard.co.uk/upload/photo/product/large/Ford_New_Holland_Ride_On_Pedal_Tractor_and_Trailer42.jpg',
  model: 'Best Tractor Ever',
  price: 77777777,
  rating: 5
})
