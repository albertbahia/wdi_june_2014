author = %w(Alex John Jimmy Alexis Kelsey Sara Max Lauren Lou Beth)
content = %w(Ouch Yum Ew Happy Sad Mad Excited Lalalala OMG LOL SUP WDI4LYFE)
image_url = %w(http://placekitten.com/300/300 http://placepuppy.it/300/300 http://placeimg.com/300/300)
timestamp = Time.now

10.times do |new_tweed|
  new_tweed = Tweed.create({
    author: author.sample,
    content: content.sample,
    image_url: image_url.sample,
    timestamp: timestamp
    })
end
