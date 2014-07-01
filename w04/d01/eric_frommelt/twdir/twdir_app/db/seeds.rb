# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Tweed.destroy_all

tweeds = Tweed.create(author: 'Eric', content: 'My first tweed', image_url: 'http://is4.revolveclothing.com/images/p/fw/z/DVON-WK2_V2.jpg', timestamp: '2014-06-30 12:56:32')

tweeds = Tweed.create(author: 'Steve', content: 'Sup peeps', image_url: 'http://www.booooooom.com/wp-content/uploads/2014/06/andrewthomashuang1.jpg', timestamp: '2014-06-30 11:46:12')

tweeds = Tweed.create(author: 'Jason', content: 'bbq on the 4th', image_url: 'http://www.hetblauweboekje.nl/wp/wp-content/uploads/2012/08/bbq-is-gezonden.jpg', timestamp: '2014-06-29 10:42:01')

tweeds = Tweed.create(author: 'Bill', content: 'Freddy dude...Freddy', image_url: 'http://th04.deviantart.net/fs70/PRE/i/2014/086/6/b/freddy_krueger___by_blaiize-d7buhn9.jpg', timestamp: '2014-06-28 09:26:10')

tweeds = Tweed.create(author: 'Pam', content: 'I love pancakes', image_url: 'http://www.perfectpancake.info/wp-content/uploads/2013/04/pancakes.jpg', timestamp: '2014-06-27 08:16:09')

tweeds = Tweed.create(author: 'Zach', content: 'Deathtruck bitches', image_url: 'http://www.jaredsouney.com/wp-content/uploads/2011/01/anthony-deathtruck-560.jpg', timestamp: '2014-06-24 08:26:12')

tweeds = Tweed.create(author: 'Gil', content: 'the party starts now', image_url: 'http://clatl.com/imager/music-gil-manteras-party-dream/b/original/1275265/b839/seedo1-1_19.jpg', timestamp: '2014-06-23 07:26:57')

tweeds = Tweed.create(author: 'Monica', content: 'Holla', image_url: 'http://www.chiangraitimes.com/wp-content/uploads/2014/02/thaiselfie1.jpg', timestamp: '2014-06-22 07:14:32')

tweeds = Tweed.create(author: 'Grace', content: 'Baby pics!', image_url: 'http://media1.santabanta.com/full1/Miscellaneous/Baby/baby-191a.jpg', timestamp: '2014-06-21 04:56:21')

tweeds = Tweed.create(author: 'Pete', content: 'Wings and beer suppress my fear', image_url: 'http://upload.wikimedia.org/wikipedia/commons/d/dd/Buffalo_-_Wings_at_Airport_Anchor_Bar.jpg', timestamp: '2014-06-18 02:21:19')
