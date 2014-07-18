# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ {name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

movie1 = Movie.create({title: "Good Will Hunting", year: 1997, poster_url: "http://ia.media-imdb.com/images/M/MV5BMTk0NjY0Mzg5MF5BMl5BanBnXkFtZTcwNzM1OTM2MQ@@._V1_SX300.jpg", plot: "Will Hunting, a janitor at MIT, has a gift for mathematics but needs help from a psychologist to find direction in his life."})
movie2 = Movie.create({title: "Titanic", year: 1997, poster_url: "http://ia.media-imdb.com/images/M/MV5BMjExNzM0NDM0N15BMl5BanBnXkFtZTcwMzkxOTUwNw@@._V1_SX300.jpg", plot:"A seventeen-year-old aristocrat, expecting to be married to a rich claimant by her mother, falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic."})
movie3 = Movie.create({title: "The Hunt for Red October", year: 1990, poster_url: "http://ia.media-imdb.com/images/M/MV5BNzk3OTE2NjQ0OV5BMl5BanBnXkFtZTgwMDg3ODYxMTE@._V1_SX300.jpg", plot: "In 1984, the USSR's best submarine captain in their newest sub violates orders and heads for the USA. Is he trying to defect, or to start a war?"})

actor1 = Actor.create({name: "Matt Damon", photo_url: "http://www.yeshairstyles.com/wp-content/gallery/matt-damon/young-matt-damon-short-classic-modern-hairstyle.jpg"})
actor2 = Actor.create({name: "Ben Affleck", photo_url: "http://weadiamedia.com/wp-content/uploads/2014/05/ben-affleck-2.jpg"})
actor3 = Actor.create({name: "Leonardo DiCaprio", photo_url: "http://images.boomsbeat.com/data/images/full/32034/422817_original-jpg.jpg"})
actor4 = Actor.create({name: "Kate Winslet", photo_url: "http://s1.ibtimes.com/sites/www.ibtimes.com/files/styles/picture_this/public/2011/10/22/177660-kate-winslet.jpg"})
actor5 = Actor.create({name: "Sean Connery", photo_url: "http://medias.unifrance.org/medias/123/11/68475/format_page/sean-connery.jpg"})
actor6 = Actor.create({name: "Alec Baldwin", photo_url: "http://photos.posh24.com/p/1615137/z/noticias_calientes/alec_baldwin_bufanda_verde_cor.jpg"})

trailer1 = Trailer.create({title: "Good Will Hunting", embed_url: "//www.youtube.com/embed/WDcMUCpppVs?rel=0"})
trailer2 = Trailer.create({title: "Titanic", embed_url: "//www.youtube.com/embed/zCy5WQ9S4c0?rel=0"})
trailer3 = Trailer.create({title: "The Hunt for Red October", embed_url: "//www.youtube.com/embed/3C2tE7vjdHk?rel=0"})

movie1.actors << actor1 << actor2
movie2.actors << actor3 << actor4
movie3.actors << actor5 << actor6

movie1.trailers << trailer1
movie2.trailers << trailer2
movie3.trailers << trailer3
