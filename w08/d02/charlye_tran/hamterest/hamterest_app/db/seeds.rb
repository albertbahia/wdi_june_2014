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
  'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo blanditiis alias at ipsam placeat?',
  'Ut facere corrupti expedita, reiciendis itaque cupiditate adipisci dolorem, eos, iste aperiam culpa nemo, nesciunt animi.'
]

categories = %w(electronics vacation sports home weekend DIY YOLO)

200.times do
  Post.create!(
    author: authors.sample,
    content: content.sample,
    image_url: images.sample,
    title: title[:article].sample + ' ' + title[:buzzword].sample + ' ' + title[:final].sample(2).join(' ') + '!',
    category: categories.sample
    )
end
