# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artist1 = Artist.create({
name: 'Leonardo da Vinci',
photo_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Francesco_Melzi_-_Portrait_of_Leonardo_-_WGA14795.jpg/640px-Francesco_Melzi_-_Portrait_of_Leonardo_-_WGA14795.jpg',
nationality: 'Italy',
birthday: 'April 15, 1452'
})

artist2 = Artist.create({
name: 'Degas',
photo_url: 'http://uploads1.wikiart.org/images/edgar-degas/degas-in-a-green-jacket-1856.jpg',
nationality: 'France',
birthday: 'July 19, 1834'
})

artist3 = Artist.create({
name: 'Basquiat',
photo_url: 'http://basquiat.com/images/homepage-image.jpg',
nationality: 'USA',
birthday: 'December 22 1960'
})


painting1 = Painting.create({
img_url: 'http://www.moosehallisf.org/sistine%20chapel%20da%20vinci.jpg',
title: 'Heavenly',
year_painted: '1400',
description: 'Views of the heavens',
artist_id: ''
})

painting2 = Painting.create({
img_url: 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRSGqvQz9H6qtoePhwdwK_KOS2CpDWsWGBLlCKcusa4AcLpSvGr',
title: 'Ceilings are upon Us',
year_painted: '1402',
description: 'Greatest Ceiling ever!',
artist_id: ''
})

painting3 = Painting.create({
img_url: 'http://a2ru.org/wp-content/uploads/2013/10/female-head-da-Vinci.jpg',
title: 'Ceilings on top',
year_painted: '1496',
description: 'One More Ceiling',
artist_id: ''
})

painting4 = Painting.create({
img_url: 'http://www.museumsyndicate.com/images/1/1589.jpg',
title: 'Degas it up',
year_painted: '1876',
description: 'Degas infamous self-portrait',
artist_id: ''
})

painting5 = Painting.create({
img_url: 'http://www.kunstkopie.de/kunst/edgar_degas_641/classe_de_danse.jpg',
title: 'Dazed and Confused',
year_painted: '1567',
description: 'Wonderful colors and confusion',
artist_id: ''
})

painting6 = Painting.create({
img_url: 'http://www.ibiblio.org/wm/paint/auth/degas/ballet/degas.classe-danse.jpg',
title: 'Lilies',
year_painted: '1466',
description: 'More pretty',
artist_id: '2'
})

painting7 = Painting.create({
img_url: 'http://www.cvltnation.com/wp-content/uploads/2012/03/basquiat-self-portrait.jpeg',
title: 'Twirlscapes',
year_painted: '1970',
description: 'Holla at cha Boy',
artist_id: ''
})

painting8 = Painting.create({
img_url: 'http://artnectar.com/wp-content/uploads/2011/06/basquiat_tenor.jpg',
title: 'Brooklyn Say What?',
year_painted: '1971',
description: 'Brooklyn Say What? is a depiction of Brooklyn before Bloomberg',
artist_id: ''
})

painting9 = Painting.create({
img_url: 'http://uploads5.wikiart.org/images/jean-michel-basquiat/glenn.jpg',
title: 'Brooklyn Night',
year_painted: '1972',
description: 'Beautiful Brooklyn',
artist_id: ''
})

artist1.paintings << painting1 << painting2 << painting3
artist2.paintings << painting4 << painting5 << painting6
artist3.paintings << painting7 << painting8 << painting9
