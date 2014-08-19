# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

authors = [
  'sheldon',
  'lenard',
  'penny',
  'raj',
  'howard',
  'bernadette',
  'amy',
  'kripke',
  'stan',
  'will wheaton',
  'batman',
  'bishop',
  'ryu',
  'ken',
  'zangief',
  'blanka',
  'guile',
  'ironman',
  'spiderman',
  'megaman'
]

contents = [
  'bazinga!',
  'penny, penny, penny',
  ' Interesting. You\'re afraid of insects and women. Ladybugs must render you catatonic.',
  'I\'m not insane. My mother had me tested!',
  'That\'s no reason to cry. One cries because one is sad. For example, I cry because others are stupid, and that makes me sad.'
]

titles = [
  'The Big Bran Hypothesis',
  'The Fuzzy Boots Corollary',
  'The Luminous Fish Effect',
  'The Hamburger Postulate',
  'The Middle-Earth Paradigm',
  'The Dumpling Paradox',
  'The Grasshopper Experiment',
  'The Cooper-Hofstadter Polarization',
  'The Loobenfeld Decay',
  'The Pancake Batter Anomaly'
]

images = [
  'http://3chicgeeks.com/wp-content/uploads/2013/02/the-big-bang-theory-season-6-episode-4-the-re-entry-minimization-11.jpeg',  'http://gottawatchit.com/wp-content/uploads/2013/10/the-big-bang-theory-the-raiders-minimization-3.jpg',
'http://gottawatchit.com/wp-content/uploads/2014/01/the-big-bang-theory-The-Convention-Conundrum-3.jpg',
'http://www.cbs.com/base/files/imagecache/596xh/101402_D2115b.jpg',
'http://3.bp.blogspot.com/-M7lTQHnbd78/Uzsat4sa4SI/AAAAAAABXnw/AHj4vZ_eXQc/s1600/The+Big+Bang+Theory+-+Episode+7.20+-+The+Relationship+Diremption+-+Promotional+Photos+(3).jpg'
]

avatars = [
  'http://sciencewritingblog.files.wordpress.com/2011/03/sheldon.jpg',
'http://images2.fanpop.com/image/photos/14500000/-The-Big-Bang-Theory-Season-4-Promotional-Photoshoot-Leonard-the-big-bang-theory-14558383-492-659.jpg',
'http://img4.wikia.nocookie.net/__cb20121015153613/bigbangtheory/images/c/cd/TBBT_6x5_The_Holographic_Excitation_Penny_Amy_and_Bernadette.jpg',
'https://theshawshow.files.wordpress.com/2011/03/raj.jpg',
'http://img2.wikia.nocookie.net/__cb20111114100529/bigbangtheory/images/a/ab/Simon_johnny_tbbt_01.jpg'
]

authors.each do |author|
  Grumble.create({
    author: author,
    content: contents.sample,
    title: titles.sample,
    image: images.sample,
    avatar: avatars.sample
  })
end
