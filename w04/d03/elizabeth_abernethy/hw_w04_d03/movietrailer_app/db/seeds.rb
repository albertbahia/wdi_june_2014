# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Movie.create({
#   title: 'Transformers: Age of Extinction',
#   year: 2014 ,
#   poster_url: 'http://ia.media-imdb.com/images/M/MV5BMjEwNTg1MTA5Nl5BMl5BanBnXkFtZTgwOTg2OTM4MTE@._V1_SX300.jpg',
#   plot: 'A mechanic and his family join the Autobots as they are targeted by a bounty hunter from another world.',
#   });
# Movie.create({
#   title: 'The Fault in Our Stars',
#   year: 2014 ,
#   poster_url: 'http://ia.media-imdb.com/images/M/MV5BMjA4NzkxNzc5Ml5BMl5BanBnXkFtZTgwNzQ3OTMxMTE@._V1_SX300.jpg',
#   plot: "Hazel and Gus are two teenagers who share an acerbic wit, a disdain for the conventional, and a love that sweeps them on a journey. Their relationship is all the more miraculous given that Hazel's other constant companion is an oxygen tank, Gus jokes about his prosthetic leg, and they met and fell in love at a cancer support group.",
#   });
# Movie.create({
#   title: 'The Hunger Games: Mockingjay - Part 1',
#   year: 2014 ,
#   poster_url: 'http://ia.media-imdb.com/images/M/MV5BMTA2OTM5MjQ0OTZeQTJeQWpwZ15BbWU4MDg3MzcyMDEx._V1_SX300.jpg',
#   plot: 'Katniss Everdeen reluctantly becomes the symbol of a mass rebellion against the autocratic Capitol.',
#   });
#
#
# Actor.create({
#   name: 'Nicola Peltz',
#   photo_url: 'http://wpc.556e.edgecastcdn.net/80556E/img.news/NEmVyDPg4lsbpt_1_1.jpg',
#   movie_id: 1
#   });
# Actor.create({
#   name: 'Mark Wahlberg',
#   photo_url: 'http://spinoff.comicbookresources.com/wp-content/uploads/2012/10/mark-wahlberg.jpg',
#   movie_id: 1
#   });
# Actor.create({
#   name: 'Stanley Tucci',
#   photo_url: 'http://upload.wikimedia.org/wikipedia/commons/c/c1/StanleyTucciMay09.jpg',
#   movie_id: 1
#   });
#
# Actor.create({
#   name: 'Shailene Woodley',
#   photo_url: 'http://www.cinemablend.com/images/news_img/35795/Shailene_Woodley_35795.jpg',
#   movie_id: 2
#   });
# Actor.create({
#   name: 'Ansel Elgort',
#   photo_url: 'http://static2.hypable.com/wp-content/uploads/2013/06/ansel-elgort-fault-in-our-stars.jpg',
#   movie_id: 2
#   });
# Actor.create({
#   name: 'Nat Wolff',
#   photo_url: 'http://cdn01.cdnwp.celebuzz.com/wp-content/uploads/2014/04/29/nat-wolff-scene-magazine-04292014-600x450.jpg',
#   movie_id: 2
#   });
#
# Actor.create({
#   name: 'Jennifer Lawrence',
#   photo_url: 'http://intrigue.ie/media/2014/01/Jennifer-Lawrence-Stalker-Deemed-Dangerous-919-2.jpg',
#   movie_id: 3
#   });
# Actor.create({
#   name: 'Josh Hutcherson',
#   photo_url: 'http://images5.fanpop.com/image/photos/28900000/ELLE-magazine-BTS-footage-josh-hutcherson-28917846-1280-720.jpg',
#   movie_id: 3
#   });
# Actor.create({
#   name: 'Liam Hemsworth',
#   photo_url: 'http://assets-s3.usmagazine.com/uploads/assets/articles/68269-liam-hemsworth-says-hes-more-grounded-than-ever-after-miley-cyrus-breakup/1385057638_liam-hemsworth-467.jpg',
#   movie_id: 3
#   });



Trailer.create({
  title: 'Transformers: Age of Extinction',
  embed_url: '<iframe id="ytplayer" type="text/html" width="640" height="390"  src="http://www.youtube.com/embed/CKD5SNYUpUk?autoplay=1"
  frameborder="0"/>',
  movie_id: 1
  });

Trailer.create({
  title: 'The Fault in Our Stars',
  embed_url: '<iframe id="ytplayer" type="text/html" width="640" height="390"  src="http://www.youtube.com/embed/AuVjGbncgQE?autoplay=1"
  frameborder="0"/>',
  movie_id: 2
  });

Trailer.create({
  title: 'The Hunger Games: Mockingjay - Part 1',
  embed_url: '<iframe id="ytplayer" type="text/html" width="640" height="390"  src="http://www.youtube.com/embed/PvqhSSu-y24?autoplay=1"
  frameborder="0"/>',
  movie_id: 3
  });
