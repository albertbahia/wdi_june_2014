# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all

artists = Artist.create(name: 'Tom Sachs', photo_url: 'http://images.huffingtonpost.com/2013-03-20-kisalala-tom-sachs-TomSachsbySelby1.jpg', nationality: 'USA', birthday: 'July 26, 1966')

artists = Artist.create(name: 'Andreas Gursky', photo_url: 'http://www.artfinding.com/images/biographie/56788/Andreas-Gursky%C2%A0.jpg', nationality: 'Germany', birthday: 'January 15, 1955')

artists = Artist.create(name: 'Evan Hecox', photo_url: 'http://nett-visual.s3.amazonaws.com/blog/wp-content/uploads/2012/01/3936-even-hecox-studio-visit-a-interview-640x492.jpg', nationality: 'USA', birthday: 'April 23, 1968')

Painting.destroy_all

paintings = Painting.create(img_url: 'http://www.wired.com/images_blogs/underwire/2012/05/4712_2_paa_tom_sachs_james_ewing-6647.jpg', title: 'Mobile Quarantine Facility', year_painted: '2012', description: '1972 Winnebago Brave, mixed media', artist_id: '1')

paintings = Painting.create(img_url: 'http://tomsachs.vaesite.net/__data/e2c1092d27cd3d7706810dfbcefc6663.jpg', title: 'Chanel Chain Saw', year_painted: '1996', description: 'cardboard, thermal adhesive 12 x 27 x 37 inches', artist_id: '1')

paintings = Painting.create(img_url: 'http://tomsachs.vaesite.net/__data/cb3f85237a10ed2e9e16b73de2a936e0.jpg', title: 'Nutsys McDonalds', year_painted: '2001', description: 'mixed media', artist_id: '1')

paintings = Painting.create(img_url: 'http://theredlist.com/media/database/photography/history/landscape-travel/andreas-gursky/001_andreas-gursky_theredlist.jpg', title: '99 Cents', year_painted: '1999', description: 'chromeginic print', artist_id: '2')

paintings = Painting.create(img_url: 'http://theredlist.com/media/database/photography/history/landscape-travel/andreas-gursky/015_andreas-gursky_theredlist.jpg', title: 'Siemens', year_painted: '1991', description: 'chromeginic print', artist_id: '2')

paintings = Painting.create(img_url: 'http://theredlist.com/media/database/photography/history/landscape-travel/andreas-gursky/011_andreas-gursky_theredlist.jpg', title: 'Montparnasse', year_painted: '1993', description: 'chromeginic print', artist_id: '2')

paintings = Painting.create(img_url: 'http://surfaceandsurface.files.wordpress.com/2012/03/1-evan-hecox-surface-and-surface.jpg', title: 'Untitled', year_painted: '2012', description: 'screen print', artist_id: '3')

paintings = Painting.create(img_url: 'http://4.bp.blogspot.com/_yKPBdYvJ2tg/R8BmFdVAL0I/AAAAAAAAAIs/sXsF53c5kho/s400/hecox-la_blacksun_3-detail.jpg', title: 'Black Sun', year_painted: '2011', description: 'screen print', artist_id: '3')

paintings = Painting.create(img_url: 'http://www.booooooom.com/wp-content/uploads/2013/06/evanhecox-03.jpg', title: 'Untitled', year_painted: '2012', description: 'mixed media', artist_id: '3')
