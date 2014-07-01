Tweed.destroy_all

authors = ["Eric", "Michael", "Alex", "Hoa", "Pete", "Albert", "Najee",
           "Gadi", "Ranjan", "Christiana"]
content = ["This is my first tweed!!!",
          "I am killing it in Rails",
          "I'm sleepy",
          "USA! USA!",
          "The Knicks need to let Carmelo go",
          "I am sooo tired of Pokemon!"
          ]
image_url = ["http://thesource.com/wp-content/uploads/2014/06/melo-heat-300x200.jpg",
            "http://worldcupticketing.com/wp-content/uploads/2014/04/U.S.-Nationwide-Team.jpg",
            "http://static.comicvine.com/uploads/scale_small/0/77/520086-sleepy.jpg"
          ]


authors.each do |author|
  Tweed.create!({
    author: authors.sample,
    content: content.sample,
    image_url: image_url.sample
    })
end
