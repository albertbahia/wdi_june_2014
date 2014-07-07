Artist.destroy_all
Painting.destroy_all

a1 = Artist.create({
  name: "Vincent van Gogh",
  photo_url: "http://iv1.lisimg.com/image/2167165/600full-vincent-van-gogh.jpg",
  nationality: "Netherlands",
  birthday: "1853/03/30"
  })

a2 = Artist.create({
  name: "Pablo Picasso",
  photo_url: "http://d.gr-assets.com/authors/1198536109p5/3253.jpg",
  nationality: "Spain",
  birthday: "1881/10/25"
  })

a3 = Artist.create({
  name: "Andy Warhol",
  photo_url: "http://www.english-online.at/art-architecture/andy-warhol/andy-warhol.jpg",
  nationality: "USA",
  birthday: "1928/09/06"
  })

p1 = Painting.create({
  img_url: "http://hd.wallpaperswide.com/thumbs/the_starry_night-t2.jpg",
  title: "The Starry Night",
  year_painted: "1889",
  description: "The poster everyone has in college"
  })

p2 = Painting.create({
  img_url: "http://www.vangoghgallery.com/painting/images/irisesthumb.jpg",
  title: "Irises",
  year_painted: '1889',
  description: "Beautiful van Goh irises"
  })

p3 = Painting.create({
  img_url: "http://www.saleoilpaintings.com/paintings-image/vincent-van-gogh/vincent-van-gogh-cafe-terrace-at-night-iv.jpg",
  title: "Cafe Terace at Night",
  year_painted: "1888",
  description: "This is why french cafes are awesome"
  })

p4 = Painting.create({
  img_url: "http://www.moma.org/collection_images/resized/271/w500h420/CRI_151271.jpg",
  title: "Les Demoiselles d'Avignon",
  year_painted: "1907",
  description: "MoMa classic"
  })

p5 = Painting.create({
  img_url: "http://www.pablopicasso.org/images/paintings/guernica.jpg",
  title: "Guernica",
  year_painted: "1937",
  description: "War is hell"
  })

p6 = Painting.create({
  img_url: "http://www.cre8it.com/nowwhatzinesep02/zinegraphicssep/oldguitarist.jpg",
  title: "The Old Guitarist",
  year_painted: "1903",
  description: "Classic Picaso from the blue period"
  })

p7 = Painting.create({
  img_url: "http://www.phaidon.com/resource/243936733-91ad4940d7-z.jpg",
  title: "Campbell's Soup Cans",
  year_painted: "1962",
  description: "When you think of Andy you think of this"
  })

p8 = Painting.create({
  img_url: "http://1.bp.blogspot.com/-WWmIZ2bCRqE/TyH-fiYxSZI/AAAAAAAAANQ/md5Jx4cBvzU/s640/paintings06.jpg",
  title: "Eight Elvises",
  year_painted: "1963",
  description: "The Elvis technique is astounding"
  })

p9 = Painting.create({
  img_url: "http://beijingcream.com/wp-content/uploads/2012/12/Andy-Warhol-Mao.jpeg",
  title: "Mao",
  year_painted: "1973",
  description: "Good ol Mao!"
  })

a1.paintings << p1 << p2 << p3
a2.paintings << p4 << p5 << p6
a3.paintings << p7 << p8 << p9
