# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Painting.destroy_all

artist_info = [

  {name: "Vincent Van Gogh",
  photo_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Van_Gogh_Self-Portrait_with_Straw_Hat_1887-Metropolitan.jpg/220px-Van_Gogh_Self-Portrait_with_Straw_Hat_1887-Metropolitan.jpg",
  nationality: "Dutch",
  birthday: "1853-3-3"},

  {name: "Keith Harring",
  photo_url: "http://www.designlovr.net/wp-content/uploads/2012/12/Keith-Haring-DESIGNLOVR-NET-544x578.jpg",
  nationality: "American",
  birthday: "1958-4-5"},

  {name: "Jeff Koons",
  photo_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Jeff_Koons_Portrait.jpg/220px-Jeff_Koons_Portrait.jpg",
  nationality: "American",
  birthday: "1958-4-2"}
]

painting_info = [

  {img_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Starry_Night_Over_the_Rhone.jpg/800px-Starry_Night_Over_the_Rhone.jpg",
  title: "Starry Night Over the Rhone",
  year_painted: 1888,
  description: "Beautiful night time stars magic."},

  {img_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Vincent_van_Gogh_%281853-1890%29_-_The_Old_Mill_%281888%29.jpg/485px-Vincent_van_Gogh_%281853-1890%29_-_The_Old_Mill_%281888%29.jpg",
  title: "The Old Mill",
  year_painted: 1888,
  description: "Old Mill"},

  {img_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Van_Gogh_The_Olive_Trees..jpg/754px-Van_Gogh_The_Olive_Trees..jpg",
  title: "The Olive Trees",
  year_painted: 1889,
  description: "Lots of olive trees"},

  {img_url: "http://www.wetcanvas.com/Community/images/01-Oct-2011/538491-bm-h760.jpg",
  title: "Wolf Man",
  year_painted: 1996,
  description: "Wolf spinning."},

  {img_url: "http://fashionstyleblog.com/files/2010/05/Keith-Haring-heart-shape-drawing.jpg",
  title: "Heart-Shaped",
  year_painted: 1990,
  description: "Heart-shaped drawing"},

  {img_url: "http://www.haring.com/!/wp-content/uploads/2012/04/ignorancefear.jpg",
  title: "Ignorance and Fear",
  year_painted: 1987,
  description: "Three men"},

  {img_url: "http://upload.wikimedia.org/wikipedia/en/thumb/e/e5/Jeff_Koons_-_Balloon_Dog_%28Magenta%29.jpg/220px-Jeff_Koons_-_Balloon_Dog_%28Magenta%29.jpg",
  title: "Baloon Puppy",
  year_painted: 2008,
  description: "Magenta puppy."},

  {img_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/A_Bibao_-_Puppy_-_de_Jeff_Koons.jpg/220px-A_Bibao_-_Puppy_-_de_Jeff_Koons.jpg",
  title: "Bilbao Puppy",
  year_painted: 2010,
  description: "Puppy in Bilbao"},

  {img_url: "http://previewcf.turbosquid.com/Preview/2011/01/18__12_04_57/jfd01.jpgfc5a9859-70f5-45ba-a42f-458c2f9506c1Large.jpg",
  title: "Gold Puppy",
  year_painted: 2014,
  description: "Gold baloon puppy."},
]

artist_info.each do |artist|
  Artist.create!(artist)
end

painting_info.each do |painting|
  Painting.create!(painting)
end

Artist.find(1).paintings << Painting.find(1) << Painting.find(2) << Painting.find(3)
Artist.find(2).paintings << Painting.find(4) << Painting.find(5) << Painting.find(6)
Artist.find(3).paintings << Painting.find(7) << Painting.find(8) << Painting.find(9)
