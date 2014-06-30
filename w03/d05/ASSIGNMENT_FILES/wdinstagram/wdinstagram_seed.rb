require 'active_record'
require_relative './models/photo'

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'wdinstagram_db'
  })

posters = %w(Hari Adam McKenneth)

img_url = ["http://placekitten.com/300/300",
           "http://placepuppy.it/300/300",
           "http://placesheen.com/300/300"
          ]

date_posted = %w(2014-06-29 2014-06-28 2014-06-27)

caption = "Look at my sweet grams!"

10.times do
  Photo.create(poster: posters.sample, img_url: img_url.sample, date_posted: date_posted.sample, caption: caption)
end