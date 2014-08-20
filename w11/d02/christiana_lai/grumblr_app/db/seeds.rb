Grumble.destroy_all

authors = %w(Adebisi Beecher Schillinger Said Augustus)

content = [
  'Bacon ipsum dolor sit amet ribeye cow spare ribs frankfurter. Pork turkey bresaola, ham hock jerky cow prosciutto tail short ribs bacon jowl kielbasa pancetta. Chicken pork belly doner, pork filet mignon brisket cow strip steak jerky ham hock tri-tip kielbasa.',
  'Hamburger jerky turducken drumstick pork belly ball tip andouille ribeye shoulder. Frankfurter shoulder beef sirloin pork loin short ribs shankle ground round ham doner.'
]

title = {
  article: %w(The A Another Top),
  buzzword: %w(First Awesome Last Jankiest Swaggest Disgusting),
  final: %w(Shank Cell Sponsor Prison Officer Visit Lunch)
}

images = [
  'http://netdna.webdesignerdepot.com/uploads/2008/12/what-is-stock-photo.jpg',
  'http://fc02.deviantart.net/fs71/i/2012/134/3/1/037_by_koko_stock-d4zq28i.jpg',
  'http://netdna.webdesignerdepot.com/uploads/2008/12/stock-microstock.jpg',
  'http://www.budgetstockphoto.com/bamers/stock_photo_spectrum.jpg',
  'http://static6.businessinsider.com/image/52be00936da811df3dce32f8/wall-street-thinks-twitter-is-the-most-mispriced-stock-on-the-market.jpg',
  'http://fc08.deviantart.net/fs71/f/2011/331/5/3/sweet_dreams_by_deingel_dog_stock-d4hfyxj.jpg'
]

avatars = [
  'http://upload.wikimedia.org/wikipedia/en/8/8a/Ozbeecher.jpg',
  'http://upload.wikimedia.org/wikipedia/en/1/10/Kareem_Sa%C3%AFd.jpg',
  'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcS8I1pxX4aLIxxQwXS8syRJgwlRM4F38WhgI28cGozkTfUOATstCopJ0Oc'
]

20.times do
  Grumble.create!(
    author: authors.sample,
    content: content.sample,
    title: title[:article].sample + ' ' + title[:buzzword].sample + ' ' + title[:final].sample(2).join(' ') + '!',
    image: images.sample,
    avatar: avatars.sample
    )
end
