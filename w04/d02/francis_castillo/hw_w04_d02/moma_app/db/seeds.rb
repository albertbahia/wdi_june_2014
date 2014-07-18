# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
artists = [
  {name: "Michelangelo", photo_url: "http://www.abcgallery.com/M/michelangelo/venusti1.JPG", nationality: "Italian", birthday: 03/06/1475},
  {name: "Jackson Pollack", photo_url: "http://thumbs.media.smithsonianmag.com//filer/artist-Jackson-Pollock-3.jpg__600x0_q85_upscale.jpg", nationality: "American", birthday:
01/29/1912},
  {name: "Pablo Picasso", photo_url: "http://en.wikipedia.org/wiki/Pablo_Picasso#mediaviewer/File:Portrait_of_Pablo_Picasso,_1908-1909,_anonymous_photographer,_Mus%C3%A9e_Picasso,_Paris...jpg", nationality: "Spanish", birthday: 10/25/1881}
]

paintings = [
  {img_url: "http://en.wikipedia.org/wiki/Michelangelo#mediaviewer/File:Michelangelo-_Tondo_Doni_-_tone_corrected.jpg", title: "Doni Tondo" , year_painted: "1504", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque euismod eget quam sed cursus. Maecenas vestibulum pulvinar venenatis. Praesent condimentum ligula vel orci blandit, eu consequat justo sollicitudin. Quisque at semper dui. Sed egestas bibendum nibh, aliquet aliquet odio porttitor a. Vestibulum eget nibh posuere, imperdiet nisl a, ultricies ligula. Phasellus at bibendum mauris. Ut ultrices ante quis ipsum pharetra, et tempor nulla dignissim.", artist_id: "1"},
  {img_url: "http://en.wikipedia.org/wiki/Michelangelo#mediaviewer/File:Michelangelo_the_libyan.jpg", title: "The Libyan Sibyl " , year_painted: "1511", description: "Proin massa velit, cursus nec ultricies sit amet, consequat nec nulla. Aliquam vel condimentum velit, non iaculis leo. Sed facilisis sem id massa consectetur congue quis et metus. Proin lorem erat, sodales a velit non, mollis iaculis est. Phasellus nec metus sollicitudin felis fringilla bibendum a ac lectus. Aliquam tempor quam sed magna faucibus hendrerit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque ac nisl vel sem placerat posuere. Curabitur fermentum sollicitudin nisl, eu pretium orci vehicula vitae. Sed quis lacus ac purus tincidunt dapibus. Donec aliquet ante diam, a iaculis libero suscipit ac.", artist_id: "1"},
  {img_url: "http://en.wikipedia.org/wiki/Michelangelo#mediaviewer/File:Michelangelo_Buonarroti_027.jpg", title: "The Prophet Jeramiah" , year_painted: "1511", description: "Donec consectetur dignissim felis sed egestas. Aenean condimentum nulla eu lacus adipiscing molestie. Proin cursus, risus in sodales volutpat, mauris justo ornare felis, aliquam convallis justo lacus vitae enim. Donec consectetur nulla arcu, quis cursus elit ullamcorper vitae. Sed euismod metus a imperdiet ultricies. Nam eu arcu auctor neque consectetur pharetra non dignissim eros. Vivamus vel dolor turpis. Vestibulum in libero quis metus condimentum posuere. Duis mollis mauris eu ante semper varius", artist_id: "1"},
  {img_url: "http://www.richeast.org/htwm/artists/at/action.jpg", title: "Action" , year_painted: "1930", description: " Ut ultrices ante quis ipsum pharetra, et tempor nulla dignissim.
In varius metus lacus, eu elementum massa aliquet non. Phasellus in nulla porta, fringilla enim id, aliquet quam. Nullam volutpat lacus dictum, gravida lacus sit amet, tempor ipsum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.", artist_id: "2"},
  {img_url: "http://www.hopkins.kyschools.us/webpages/twright/imageGallery/jackson-pollock-painting.jpg", title: "Nce" , year_painted: "1930" , description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquam orci ullamcorper, euismod dolor vitae, porttitor sapien. Mauris vel magna elit. Nulla in aliquet lectus, sit amet auctor leo. Proin sodales aliquam imperdiet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam at tincidunt diam. Sed cursus lacus mauris, et malesuada nibh laoreet ac. Fusce vehicula lacinia sapien at tincidunt. Quisque pharetra quam aliquam erat bibendum ultricies. Sed sit amet turpis semper, blandit quam et, aliquet elit. Aliquam imperdiet et massa vitae volutpat. Vivamus ut dignissim tellus. Nam vitae porttitor augue. Fusce tempor sollicitudin magna ac iaculis.", artist_id: "2"},
  {img_url: "", title: "Splat" , year_painted: "1948", description: "Proin lorem erat, sodales a velit non, mollis iaculis est. Phasellus nec metus sollicitudin felis fringilla bibendum a ac lectus. Aliquam tempor quam sed magna faucibus hendrerit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque ac nisl vel sem placerat posuere. Curabitur fermentum sollicitudin nisl, eu pretium orci vehicula vitae. Sed quis lacus ac purus tincidunt dapibus. Donec aliquet ante diam, a iaculis libero suscipit ac. Vestibulum nec nisl ultricies, pellentesque odio lobortis, aliquam nulla. Sed interdum dictum erat sed sollicitudin. Etiam in neque tristique, tincidunt velit non, mollis risus. Nam sed tellus mattis tellus tristique adipiscing at eu orci.", artist_id: "2"},
  {img_url: "http://www.kaliweb.com/jacksonpollock/images/art/key.jpg", title: "Sadated" , year_painted: "1950", description: "Maecenas aliquet lacus ac felis pulvinar, sed molestie mi mattis. Aliquam porttitor urna nulla, non ullamcorper elit vehicula non. Vivamus eros metus, vehicula eu dui ac, vehicula convallis massa. Mauris laoreet nisi ut quam pulvinar congue. Vestibulum mollis cursus risus, nec vestibulum lacus pharetra at. Cras ut rutrum purus.", artist_id: "2"},
  {img_url: "http://www.pablopicasso.org/images/paintings/the-blindmans-meal.jpg", title: "Blue Man" , year_painted: "1920", description: "Nunc scelerisque ligula a nisl tempus dapibus. Ut sem nulla, venenatis sed vehicula a, dapibus ac mi. Pellentesque imperdiet tellus tortor, vitae porttitor leo tempus non. Vestibulum tempor pretium sollicitudin. Integer ornare elit eu eleifend dignissim. Proin eros nunc, mollis in turpis sed, mollis consectetur dolor. Quisque sodales, odio sit amet facilisis tempor, tellus elit eleifend orci, id luctus nibh mi accumsan enim. Integer in purus mauris. Sed in sagittis quam. Curabitur fermentum ligula sit amet massa euismod, nec hendrerit urna feugiat. Nulla imperdiet dui justo.", artist_id: "3"},
  {img_url: "http://www.arthistoryarchive.com/arthistory/cubism/images/PabloPicasso-Les-Demoiselles-dAvignon-1907.jpg", title: "Blocks" , year_painted: "1930", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis dignissim nisl, sit amet dictum ante. Etiam tempus ornare pellentesque. Fusce lobortis ligula eu arcu consequat lacinia. Fusce rutrum, leo et eleifend molestie, elit metus posuere velit, id hendrerit neque velit in libero. Donec at blandit orci. Proin in nibh et nunc tincidunt lacinia id sed ante. Nulla sodales augue non nibh pellentesque placerat. Curabitur tempus dolor blandit turpis egestas, sit amet viverra neque volutpat. Donec vel tincidunt odio, ac porttitor magna. Nullam feugiat mattis felis, sed varius arcu blandit sed. Sed porttitor cursus mauris, sit amet feugiat metus viverra eget. Mauris ultricies aliquam lorem, at convallis mi bibendum id.", artist_id: "3"},
  {img_url: "http://www.metmuseum.org/toah/images/h2/h2_1990.192.jpg", title: "Bizzaro Woman" , year_painted: "1940", description: "Morbi pulvinar bibendum neque, aliquam suscipit mi placerat quis. Nam erat nisi, tincidunt sed ipsum eget, ornare volutpat libero. Nulla convallis ultrices nulla, non ultrices lorem suscipit sed. Cras condimentum id sem et interdum. Suspendisse vehicula enim luctus, laoreet metus tempus, lobortis ipsum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean ac tincidunt neque. Sed ac lacus enim.", artist_id: "3"}
]

def seedb(art, paint)
  i = 0
  while i < art.length do
    art.each do |a|
      Artist.create!(a)
      i+=1
  end

  end

  x = 0
  while x < paint.length do
    paint.each do |p|
      Painting.create!(p)
    x +=1
    end

  end
end

seedb(artists, paintings)
