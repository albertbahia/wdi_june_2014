group_c = Group.create(name: "Group C")
group_a = Group.create(name: "Group A")

group_c.teams.push(
        colombia =  Team.create(
                    country: "Colombia",
                    flag_url: "http://inside.tru.ca/wp-content/uploads/2011/12/ColombianFlag_2.jpg",
                    manager_name: "Jose Pekerman"),
        greece = Team.create(
                    country: "Greece",
                    flag_url: "http://ak.picdn.net/shutterstock/videos/752332/preview/stock-footage-greece-flag-in-the-wind-part-of-a-series.jpg",
                    manager_name: "Fernando Santos"),
        cote_d_ivoire = Team.create(
                    country: "Cote D'Ivoire",
                    flag_url: "http://img.freeflagicons.com/thumb/flag_background/cote_d_Ivoire/cote_d_Ivoire_640.png",
                    manager_name: "Sabri Lamouchi"),
        japan =  Team.create(
                    country: "Japan",
                    flag_url: "http://ak4.picdn.net/shutterstock/videos/1239289/preview/stock-footage-seamless-looping-d-rendering-closeup-of-the-flag-of-japan-flag-has-a-detailed-realistic-fabric.jpg",
                    manager_name: "Albert Zaccheroni")
)
group_a.teams.push(
        brazil = Team.create(
                    country: "Brazil",
                    flag_url: "http://worldcupofficial.com/wp-content/uploads/2014/05/bra-flag2.jpg",
                    manager_name: "Luiz Felipe Scolari"),
        mexico = Team.create(
                    country: "Mexico",
                    flag_url: "http://ak3.picdn.net/shutterstock/videos/2002565/preview/stock-footage-mexican-flag-loop-video.jpg",
                    manager_name: "Miguel Herrera"),
        croatia = Team.create(
                    country: "Croatia",
                    flag_url: "http://ak.picdn.net/shutterstock/videos/1372141/preview/stock-footage-croatia-flag-loop.jpg",
                    manager_name: "Niko Lovac"),
        cameroon = Team.create(
                    country: "Cameroon",
                    flag_url: "http://ak4.picdn.net/shutterstock/videos/1370197/preview/stock-footage-cameroon-flag-loop.jpg",
                    manager_name: "Volker Finke")
)

colombia.players.push(
        Player.create(
                      name: "James Rodriguez",
                      photo_url: "http://www.arbiternews.com/wp-content/uploads/2014/06/James-Rodriguez.jpeg",
                      position: "Midfielder",
                      skill_level: 100),
        Player.create(
                      name: "Mario Yepes",
                      photo_url: "http://www.getmoresports.com/wp-content/uploads/2014/06/Mario-Yepes-Colombia.jpg",
                      position: "Defender",
                      skill_level: 100),
        Player.create(
                      name: "Pablo Amero",
                      photo_url: "http://www2.pictures.zimbio.com/gi/Pablo+Armero+Colombia+v+Serbia+SnXVm-suuz8l.jpg",
                      position: "Defender",
                      skill_level: 100)

)

greece.players.push(
        Player.create(
                      name: "Konstantinos Mitroglou",
                      photo_url: "http://img.fifa.com/mm/photo/tournament/competition/02/22/62/76/2226276_full-lnd.jpg",
                      position: "Forward",
                      skill_level: 50),
        Player.create(
                      name: "Georgios Samaras",
                      photo_url: "http://www.eveningtimes.co.uk/sites/default/files/imagecache/400xY/2012/9/18842145.JPG",
                      position: "Forward",
                      skill_level: 34),
        Player.create(
                      name: "Dimitris Salpingidis",
                      photo_url: "http://www2.pictures.zimbio.com/gi/Dimitrios+Salpingidis+d6kcCxK30E8m.jpg",
                      position: "Forward",
                      skill_level: 45)

)

cote_d_ivoire.players.push(
        Player.create(
                      name: "Didier Drogba",
                      photo_url: "http://cdn.images.express.co.uk/img/dynamic/67/590x/didier-drogba-448075.jpg",
                      position: "Forward",
                      skill_level: 79),
        Player.create(
                      name: "Yaya Touré",
                      photo_url: "http://ghanasoccernet.com/wp-content/uploads/2014/07/Yaya-Toure.jpg",
                      position: "Midfielder",
                      skill_level: 74),
        Player.create(
                      name: "Kolo Touré",
                      photo_url: "http://static.goal.com/252900/252953_heroa.jpg",
                      position: "Defender",
                      skill_level: 68)

)

japan.players.push(
        Player.create(
                      name: "Keisuke Honda",
                      photo_url: "http://footballinfo.in/images/players/295.jpg",
                      position: "Midfielder",
                      skill_level: 88),
        Player.create(
                      name: "Shinji Kagawa",
                      photo_url: "http://static.guim.co.uk/sys-images/Football/Clubs/Club_Home/2012/6/5/1338884553509/Shinji-Kagawa-008.jpg",
                      position: "Midfielder",
                      skill_level: 34),
        Player.create(
                      name: "Atsuto Uchida",
                      photo_url: "http://images.supersport.com/2011/Atsuto-Uchida-110406-Gestures-R300.jpg",
                      position: "Defender",
                      skill_level: 67)

)

brazil.players.push(
        Player.create(
                      name: "Hulk",
                      photo_url: "http://www3.pictures.zimbio.com/gi/Hulk+South+Africa+v+Brazil+zs34o4l7Wthl.jpg",
                      position: "Forward",
                      skill_level: 45),
        Player.create(
                      name: "Neymar",
                      photo_url: "https://static-secure.guim.co.uk/sys-images/Sport/Pix/pictures/2013/5/26/1369558864766/Neymar-smiling-and-wearin-008.jpg",
                      position: "Forward",
                      skill_level: 20),
        Player.create(
                      name: "David Luiz",
                      photo_url: "http://static.goal.com/376200/376296_heroa.jpg",
                      position: "Defender",
                      skill_level: 43)

)

mexico.players.push(
        Player.create(
                      name: "Javier Hernández Balcázar",
                      photo_url: "http://trireport.files.wordpress.com/2012/10/chicharito-sonrio-tras-conseguir-un-tanto-en-el-abultado-marcador-0.jpeg",
                      position: "Forward",
                      skill_level: 87),
        Player.create(
                      name: "Rafael Márquez",
                      photo_url: "http://3.bp.blogspot.com/_28lOKPyGAbI/TDv2YyR-4NI/AAAAAAAABeY/v4tloPaTpQY/s1600/Marquez+with+Mexico.jpg",
                      position: "Defender",
                      skill_level: 76),
        Player.create(
                      name: "Guillermo Ochoa",
                      photo_url: "http://ratermob.com/wp-content/uploads/2014/06/16494-thumb.jpg",
                      position: "Goalkeeper",
                      skill_level: 88)

)

croatia.players.push(
        Player.create(
                      name: "Luka Modric",
                      photo_url: "http://static.guim.co.uk/sys-images/Sport/Pix/pictures/2012/8/27/1346056327582/Luka-Modric-008.jpg",
                      position: "Midfielder",
                      skill_level: 67),
        Player.create(
                      name: "Darijo Srna",
                      photo_url: "http://wallpapersbundle.com/wp-content/uploads/2014/06/Darijo-Srna-44.jpg",
                      position: "Defender",
                      skill_level: 76),
        Player.create(
                      name: "Eduardo da Silva",
                      photo_url: "http://arsenalfcblog.com/wp-content/uploads/2007/07/eduardo-da-silva-4.jpg",
                      position: "Forward",
                      skill_level: 88)

)

cameroon.players.push(
        Player.create(
                      name: "Samuel Eto'o",
                      photo_url: "http://i.telegraph.co.uk/multimedia/archive/02787/samuel-etoo_2787124b.jpg",
                      position: "Forward",
                      skill_level: 87),
        Player.create(
                      name: "Alex Song",
                      photo_url: "http://images.supersport.com/2011/SongAlexandre100529TacklesAI300.jpg",
                      position: "Midfielder",
                      skill_level: 65),
        Player.create(
                      name: "Benoît Assou-Ekotto",
                      photo_url: "http://www.5pillarz.com/wp-content/uploads/2014/06/Beno%C3%AEt-Assou-Ekotto.jpg",
                      position: "Defender",
                      skill_level: 65)

)
