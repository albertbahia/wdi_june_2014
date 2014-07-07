group1 = Group.create(
          name: "G"
          )

group2 = Group.create(
          name: "A"
          )

group1.teams.push(
          team1 = Team.create(
            country: "USA",
            flag_url:"http://activerain.trulia.com/image_store/uploads/agents/realtorgal802/files/bald_eagle_head_and_american_flag1.jpg",
            manager: "John"
            ), 
          team2 = Team.create(
            country: "Germany",
            flag_url:"http://upload.wikimedia.org/wikipedia/en/b/ba/Flag_of_Germany.svg",
            manager: "Jacob"
            ), 
          team3 = Team.create(
            country: "Portugal",
            flag_url:"http://mapsofworld.himmera.com/flags/Portugal_Flag_big.jpg",
            manager: "Jingle"
            ), 
          team4 = Team.create(
            country: "Ghana",
            flag_url:"http://cdn.ghanaweb.com/GHP/img/pics/79307655.jpg",
            manager: "Heimer"
            ) 
  )

group2.teams.push(
          team5 = Team.create(
            country: "Brazil",
            flag_url:"http://upload.wikimedia.org/wikipedia/en/thumb/0/05/Flag_of_Brazil.svg/1000px-Flag_of_Brazil.svg.png",
            manager: "Tom"
            ), 
          team6 = Team.create(
            country: "Mexico",
            flag_url:"http://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Flag_of_Mexico.svg/1400px-Flag_of_Mexico.svg.png",
            manager: "Jerry"
            ),           
          team7 = Team.create(
            country: "Croatia",
            flag_url:"http://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Flag_of_Croatia.svg/1200px-Flag_of_Croatia.svg.png",
            manager: "Marvin"
            ), 
          team8 = Team.create(
            country: "Cameroon",
            flag_url:"http://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Flag_of_Cameroon.svg/600px-Flag_of_Cameroon.svg.png",
            manager: "Martian"
            )
  )

team1.players.push(
          Player.create(
            name: "Dempsey",
            photo_url: "http://sites.duke.edu/wcwp/files/2013/12/Clint-Dempsey.jpg",            
            position: "Forward",
            skill_level: 70
            ),
          Player.create(
            name: "Altidore",
            photo_url: "http://cache2.asset-cache.net/gc/451261480-jozy-altidore-of-the-united-states-looks-on-gettyimages.jpg?v=1&c=IWSAsset&k=2&d=GkZZ8bf5zL1ZiijUmxa7QY2JlLq7FH1l3LH8w4mm%2BurlND485H3pzjYIPneOrzsU",            
            position: "Forward",
            skill_level: 70
            ),
          Player.create(
            name: "Johannsson",
            photo_url: "http://img.bleacherreport.net/img/images/photos/002/597/308/hi-res-185140668-aron-johannsson-of-the-u-s-mens-national-soccer-team_crop_north.jpg?w=630&h=420&q=75",            
            position: "Forward",
            skill_level: 70
            )
)

team2.players.push(
          Player.create(
            name: "Ozil",
            photo_url: "http://cache2.asset-cache.net/gc/451528486-germanys-mesut-ozil-reacts-during-the-2014-gettyimages.jpg?v=1&c=IWSAsset&k=2&d=GkZZ8bf5zL1ZiijUmxa7QdelEmxK51TQO3odX9l%2FDqOg4h8ZJ7xBCg5QppO%2B6BdW",            
            position: "Midfielder",
            skill_level: 70
            ),
          Player.create(
            name: "Schweinsteiger",
            photo_url: "http://www1.pictures.zimbio.com/gi/Bastian+Schweinsteiger+Germany+v+Ghana+Group+9TOGKUzqEKql.jpg",            
            position: "Midfielder",
            skill_level: 70
            ),
          Player.create(
            name: "Neuer",
            photo_url: "https://wpmedia.o.canada.com/2014/06/530242121_216207706.jpg",            
            position: "Goalkeeper",
            skill_level: 70
            )
)

team3.players.push(
          Player.create(
            name: "Ronaldo",
            photo_url: "http://www.squawka.com/news/wp-content/uploads/2014/06/4290592.jpg",            
            position: "Forward",
            skill_level: 80
            ),
          Player.create(
            name: "Nani",
            photo_url: "http://static.guim.co.uk/sys-images/Football/Pix/pictures/2014/5/19/1400538391426/Nani-Manchester-United-011.jpg",            
            position: "Midfielder",
            skill_level: 70
            ),
          Player.create(
            name: "Pepe",
            photo_url: "http://i.telegraph.co.uk/multimedia/archive/02943/muller-3_2943941b.jpg",            
            position: "Defender",
            skill_level: 70
            )
)

team4.players.push(
          Player.create(
            name: "Kevin-Prince Boateng",
            photo_url: "http://assets.nydailynews.com/polopoly_fs/1.1800920!/img/httpImage/image.jpg_gen/derivatives/article_970/south-africa-soccer-wcup-ghana.jpg",            
            position: "Forward",
            skill_level: 70
            ),
          Player.create(
            name: "Gyan",
            photo_url: "http://static.guim.co.uk/sys-images/Football/Pix/pictures/2014/5/29/1401382644936/Asamoah-Gyan-and-Sulley-M-009.jpg",            
            position: "Forward",
            skill_level: 70
            ),
          Player.create(
            name: "Ayew",
            photo_url: "http://www1.pictures.zimbio.com/gi/Andre+Ayew+Germany+v+Ghana+Group+G+2014+FIFA+Y9Pw3Sg4kdjl.jpg",            
            position: "Midfielder",
            skill_level: 70
            )
)

team5.players.push(
          Player.create(
            name: "Neymar",
            photo_url: "http://sisoccer.files.wordpress.com/2014/05/neymarjump.jpg?w=600&h=483",            
            position: "Forward",
            skill_level: 95
            ),
          Player.create(
            name: "Fred",
            photo_url: "http://news.bbcimg.co.uk/media/images/75448000/jpg/_75448646_fred.jpg",            
            position: "Forward",
            skill_level: 70
            ),
          Player.create(
            name: "Hulk",
            photo_url: "http://img.bleacherreport.net/img/images/photos/002/939/166/f0d198d35c756acd366d3014d7ff6d1f_crop_north.jpg?w=630&h=420&q=75",            
            position: "Forward",
            skill_level: 70
            )
)

team6.players.push(
          Player.create(
            name: "Marquez",
            photo_url: "http://football2014wc.com/wp-content/uploads/2014/05/Mexico-2014-World-Cup-Squad.jpg",            
            position: "Defender",
            skill_level: 70
            ),
          Player.create(
            name: "Balcazar",
            photo_url: "http://football2014wc.com/wp-content/uploads/2014/05/Mexico-2014-World-Cup-Squad.jpg",            
            position: "Forward",
            skill_level: 70
            ),
          Player.create(
            name: "Ochoa",
            photo_url: "http://football2014wc.com/wp-content/uploads/2014/05/Mexico-2014-World-Cup-Squad.jpg",            
            position: "Goalkeeper",
            skill_level: 70
            )
)

team7.players.push(
          Player.create(
            name: "Modric",
            photo_url: "http://news.ladbrokes.com/en-gb/wp-content/uploads/2014/05/CroatiaBIG.gif",            
            position: "Midfielder",
            skill_level: 70
            ),
          Player.create(
            name: "Srna",
            photo_url: "http://news.ladbrokes.com/en-gb/wp-content/uploads/2014/05/CroatiaBIG.gif",
            position: "Defender",
            skill_level: 70
            ),
          Player.create(
            name: "Silva",
            photo_url: "http://news.ladbrokes.com/en-gb/wp-content/uploads/2014/05/CroatiaBIG.gif",
            position: "Forward",
            skill_level: 70
            )
)

team8.players.push(
          Player.create(
            name: "Eto'o",
            photo_url: "https://cameroontraveler.files.wordpress.com/2014/06/cameroonfifa.jpg",            
            position: "Forward",
            skill_level: 70
            ),
          Player.create(
            name: "Song",
            photo_url: "https://cameroontraveler.files.wordpress.com/2014/06/cameroonfifa.jpg",
            position: "Midfielder",
            skill_level: 70
            ),
          Player.create(
            name: "Webo",
            photo_url: "https://cameroontraveler.files.wordpress.com/2014/06/cameroonfifa.jpg",
            position: "Forward",
            skill_level: 70
            )
)
