moonrise = Movie.create(title: "Moonrise Kingdom", year: 2012, poster_url: "http://ia.media-imdb.com/images/M/MV5BMTEwMTc3NDkzOTJeQTJeQWpwZ15BbWU3MDI4NTAwNzc@._V1_SX300.jpg", plot: 'A pair of young lovers flee their New England town, which causes a local search party to fan out and find them.')
ender = Movie.create(title: "Ender's Game", year: 2013, poster_url:"http://ia.media-imdb.com/images/M/MV5BMjAzMzI5OTgzMl5BMl5BanBnXkFtZTgwMTU5MTAwMDE@._V1_SX300.jpg", plot: 'Young Ender Wiggin is recruited by the International Military to lead the fight against the Formics, a genocidal alien race which nearly annihilated the human race in a previous invasion.')
deli = Movie.create(title:"Delicatessen", year: 1991, poster_url:"http://ia.media-imdb.com/images/M/MV5BMTY4NzQxNjI5OF5BMl5BanBnXkFtZTcwNzA1OTYxMQ@@._V1_SX300.jpg",plot: 'Post-apocalyptic surrealist black comedy about the landlord of an apartment building who occasionally prepares a delicacy for his odd tenants.')

moonrise.actors.push(
  Actor.create(name:"Jared Gilman", photo_url:"http://38.media.tumblr.com/tumblr_lxpv9ynyXS1qjaa1to1_1280.jpg"),
  Actor.create(name:"Kara Hayward", photo_url:"http://us.cdn281.fansshare.com/photos/karahayward/kara-hayward-as-suzy-in-moonrise-kingdom-1038587464.jpg")
  )

ender.actors.push(
  Actor.create(name:"Asa Butterfield", photo_url:"http://www.billboard.com/files/styles/promo_650/public/media/enders-game-screenshot-650-430b.jpg"),
  Actor.create(name:"Harrison Ford", photo_url:"http://geekoutlaw.com/wp-content/uploads/2013/11/harrison-ford-enders-game.jpg")
  )

deli.actors.push(
  Actor.create(name:"Dominique Pinon", photo_url:"http://4.bp.blogspot.com/-IzqYyPo9D8Y/UTOrC0rhRkI/AAAAAAAAGkM/bnmJbahZgHg/s1600/delicatessen-Dominique-Pinon.jpg"),
  Actor.create(name:"Marie-Laure Dougnac", photo_url:"http://media.tumblr.com/tumblr_l5tgf5dvnU1qbb4ki.jpg")
  )


moonrise.trailers.push(Trailer.create(title:"Moonrise Kingdom", embed_url: "http://www.youtube.com/embed/7N8wkVA4_8s"))
ender.trailers.push(Trailer.create(title:"Ender's Game", embed_url: "http://www.youtube.com/embed/vP0cUBi4hwE"))
deli.trailers.push(Trailer.create(title:"Delicatessen", embed_url: "http://www.youtube.com/embed/Tg3V8HDK5go"))
