# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artists = [
  {name: 'Luke Skywalker', photo_url: "http://thinkpurpose.files.wordpress.com/2012/11/luke-w-light-saber-luke-skywalker-2493034-325-325.jpg", nationality: "Tatooinian", birthday: "1184-05-04"},
  {name: 'Darth Vader', photo_url: "http://images6.fanpop.com/image/photos/33100000/Darth-Vader-darth-vader-33114066-860-900.png", nationality: "Tatooinian", birthday: "1164-01-23"},
  {name: 'Lando Calrissian', photo_url: "http://www.empireonline.com/images/image_index/original/65645.jpg", nationality: "Cloudian", birthday: "1178-09-23"},
]

paintings = [
  {img_url: "http://theinspirationgrid.com/wp-content/uploads/2011/10/425e-starwars.jpg", title: "Learned Something New", year_painted: 1190, description: "Luke's first and favorite piece.", artist_id: 1},
  {img_url: "http://media.imaginefx.futurecdn.net/sites/beta.imaginefx.com/files/images/2012/12/18/star_wars_poster.jpg", title: "The Journey", year_painted: 1203, description: "A piece reflecting the majesty of the journey ahead.", artist_id: 1},
  {img_url: "http://hiconsumption.com/wp-content/uploads/2013/05/Vintage-Star-Wars-Oil-Paintings-0.jpg", title: "FriendBots", year_painted: 1199, description: "Luke expresses his inner fascination with droids.", artist_id: 1},
  {img_url: "http://fc04.deviantart.net/fs70/i/2009/346/5/5/star_wars_speed_painting_by_brahamil.jpg", title: "Dreams of Tomorrow", year_painted: 1175, description: "A piece depicting the way Vader wish his body was modified.", artist_id: 2},
  {img_url: "http://designyoutrust.com/wp-content/uploads/2013/01/star-wars-peace-hance.jpg", title: "Softer Times", year_painted: 1189, description: "Vader has his sincere, peaceful side.", artist_id: 2},
  {img_url: "http://www.iamfatterthanyou.com/blog/wp-content/uploads/2012/12/star-wars-paintings.jpg", title: "Evil Sandwich", year_painted: 1195, description: "A piece illustrating the theoretical ratios of evil to good.", artist_id: 2},
  {img_url: "http://img2.wikia.nocookie.net/__cb20080131144129/starwars/images/6/6a/Cloud_City.jpg", title: "High", year_painted: 1191, description: "Lando's first love.", artist_id: 3},
  {img_url: "https://img0.etsystatic.com/005/0/7173507/il_340x270.363873016_qd3p.jpg", title: "Bubbly Variety", year_painted: 1197, description: "Just a piece of what was on Lando's mind at the moment.", artist_id: 3},
  {img_url: "http://static.ugallery.com/webdata/Product/21808/Images/large_Primrose_Cloud.jpg", title: "Vapor Man", year_painted: 1223, description: "How can he think of anything else?", artist_id: 3}
]

artists.each do |artist_info|
  Artist.create!(artist_info)
end

paintings.each do |painting_info|
  Painting.create!(painting_info)
end
