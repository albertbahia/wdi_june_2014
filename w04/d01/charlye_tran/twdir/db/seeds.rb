# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'active_record'

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'twdir_development'
})

tweeds_authors = %w(Charlye Cisco Emily Bella Nico Samantha Jermeiah Halifax Jake Alex)

tweeds_content = ["hello", "when in rome", "girl's gotta eat", "don't stop believing",
"summertime sadness", "i believe that we will win", "USA! USA!", "GOOOOOAAAAALLLL!",
"bananas in pajamas", "tree house rocks"]

tweeds_image_url = [
"http://thumbs.dreamstime.com/x/soccer-ball-sits-grass-field-white-stripe-traditional-31864397.jpg",
"http://1.bp.blogspot.com/-JZooagoM4sY/UInFeGd7EeI/AAAAAAAACnk/jRz0BAKbURs/s640/soccer+ball+kick.jpg",
"http://ztona.org/wp-content/uploads/06d80eb0c50b49a509b49f2424e8c8051.jpg",
"http://ztona.org/wp-content/uploads/eccbc87e4b5ce2fe28308fd9f2a7baf3.jpg",
"http://ztona.org/wp-content/uploads/4bc2f82ad41b582fef5717383336f700.jpg",
"http://ztona.org/wp-content/uploads/0348142d2a2e23873409c7cc28cf7ed8.jpg",
"http://ztona.org/wp-content/uploads/78b927b55f7e74ba5349c412e41cb782.jpg",
"http://ztona.org/wp-content/uploads/f273c6fcc4b6e7a5955dee25c5625972.jpg",
"http://ztona.org/wp-content/uploads/f273c6fcc4b6e7a5955dee25c5625972.jpg",
"http://www.allmyfaves.com/blog/wp-content/uploads/2012/10/dog-boy-mans-best-friend.jpeg"
]

tweeds_timestamp = [
"June 26, 2014",
"Jan 18, 2014",
"June 30, 2014",
"Jan 12, 2014",
"May 15, 2011",
"April 10, 2000",
"February 2, 2002",
"Oct 15, 2011",
"Dec 10, 2000",
"Aug 2, 2002"
]

10.times do
  Tweed.create(
    author: tweeds_authors.sample,
    content: tweeds_content.sample,
    image_url: tweeds_image_url.sample,
    timestamp: tweeds_timestamp.sample
  )
end
