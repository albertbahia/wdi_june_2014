authors = %w(Nebuchadnezzar Hamurrabi Appolonia Prince Bathsheeba)

title = {
  article: %w(The A Another Top),
  buzzword: %w(Spectacular Amazing Last Perfect Extravagant Beautiful),
  final: %w(Weekend Getaway Party Choice Vacation Celebration Project)
}

images = [
  'http://netdna.webdesignerdepot.com/uploads/2008/12/what-is-stock-photo.jpg',
  'http://fc02.deviantart.net/fs71/i/2012/134/3/1/037_by_koko_stock-d4zq28i.jpg',
  'http://netdna.webdesignerdepot.com/uploads/2008/12/stock-microstock.jpg',
  'http://www.budgetstockphoto.com/bamers/stock_photo_spectrum.jpg',
  'http://static6.businessinsider.com/image/52be00936da811df3dce32f8/wall-street-thinks-twitter-is-the-most-mispriced-stock-on-the-market.jpg',
  'http://fc08.deviantart.net/fs71/f/2011/331/5/3/sweet_dreams_by_deingel_dog_stock-d4hfyxj.jpg'
]

content = [
  "Your bones don't break, mine do. That's clear. Your cells react to bacteria and viruses differently than mine. You don't get sick, I do. That's also clear. But for some reason, you and I react the exact same way to water. We swallow it too fast, we choke. ",
  "Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like they're actually proud of that shit. "
]

categories = %w(electronics vacation sports home weekend DIY YOLO)

20.times do 
  Grumblr.create!(
    author: authors.sample,
    title: title[:article].sample + ' ' + title[:buzzword].sample + ' ' + title[:final].sample(2).join(' ') + '!',
    content: content.sample,
    image: images.sample,
    avatar: 'http://cloud.ranjanagarwal.com/image/3Q2c2g1x171p/Screen%20Shot%202014-08-18%20at%203.59.45%20PM.png'
    ) 
end