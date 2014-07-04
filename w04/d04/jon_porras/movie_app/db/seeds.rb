bluevelvet = Movie.create(title: "Blue Velvet",
                          year: "1986",
                          poster_url: "http://4.bp.blogspot.com/_4Itf6TkQqGs/TNXMt8VznwI/AAAAAAAABus/ihfFDmKI0cY/s1600/blue-velvet.jpg")

losthighway = Movie.create(title: "Lost Highway",
                          year: "1997",
                          poster_url: "http://ia.media-imdb.com/images/M/MV5BMTk3MzUxOTQyNF5BMl5BanBnXkFtZTgwODM3Mjc1MDE@._V1_SY317_CR0,0,214,317_AL_.jpg")

mulhollanddrive = Movie.create(title: "Mulholland Drive",
                          year: "2001",
                          poster_url: "http://upload.wikimedia.org/wikipedia/en/0/0f/Mulholland.png")

bluevelvet.actors.push(
                Actor.create(name: "Iseabella Rossellini",
                            photo_url: "http://theinterrobang.com/wp-content/uploads/2013/12/ir2.jpg"),
                Actor.create(name: "Lyle MacLachlan",
                            photo_url: "http://www.nndb.com/people/603/000023534/kyle-sized.jpg")
)

losthighway.actors.push(
                Actor.create(name: "Bill Pullman",
                            photo_url: "http://www.beststarsofyear.com/images/bill-pullman-02.jpg"),
                Actor.create(name: "Patricia Arquette",
                            photo_url: "http://exileorexhibit.files.wordpress.com/2012/03/lost-highway-patricia-arquette.jpg")
)

mulhollanddrive.actors.push(
                Actor.create(name: "Naomi Watts",
                            photo_url: "http://movieactors.com/photos-stars/naomi-watts-mulholland-drive%20-%20076.jpg"),
                Actor.create(name: "Laura Harring",
                            photo_url: "http://upload.wikimedia.org/wikipedia/en/8/8e/Rita_Poster_Mulholland.jpg")
)

bluevelvet.trailers.push(
              Trailer.create(title: "Blue Velvet Trailer",
                              embeded_url: "//www.youtube.com/embed/bWr4JvAWF20"),

)

losthighway.trailers.push(
              Trailer.create(title: "Lost Highway Theatrical Trailer",
                              embeded_url: "//www.youtube.com/embed/hvGvjnqSKF8"),

)

losthighway.trailers.push(
              Trailer.create(title: "Mulholland Drive",
                              embeded_url: "//www.youtube.com/embed/96R9MG0DxLc"),

)
