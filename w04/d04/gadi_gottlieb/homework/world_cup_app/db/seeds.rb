Group.destroy_all
Team.destroy_all
Player.destroy_all

group_a = Group.create(name: "Group A")
group_g = Group.create(name: "Group G")

# group a
brazil = Team.create(country: "Brazil", flag_url: "http://www.activityvillage.co.uk/sites/default/files/images/brazil_flag_printables_av2.jpg", manager_name: "Luiz Felipe Scolari")
mexico = Team.create(country: "Mexico", flag_url: "http://tmfwpodcast.com/wp-content/uploads/2014/05/stock-footage-mexican-flag-with-real-structure-of-a-fabric.jpg", manager_name: "Miguel Herrera")
croatia = Team.create(country: "Croatia", flag_url: "http://thumbs.dreamstime.com/x/croatia-flag-button-8226752.jpg", manager_name: "Niko Kovac")
cameroon = Team.create(country: "Cameroon", flag_url: "http://www.mapsofworld.com/images/world-countries-flags/cameroon-flag.gif", manager_name: "Volker Finke")
# group g
usa = Team.create(country: "USA", flag_url: "http://ak0.picdn.net/shutterstock/videos/132343/preview/stock-footage-flag-of-the-usa-slowly-waving-in-the-wind-seamless-loop.jpg", manager_name: "Jurgen Klinsmann")
portugal = Team.create(country: "Portugal", flag_url: "http://www.boldandbeautifulmanly.com.au/uploads/4/7/2/5/4725623/____9296320_orig.jpg", manager_name: "Paulo Bento")
germany = Team.create(country: "Germany", flag_url: "http://www.enchantedlearning.com/europe/germany/flag/Flagbig.GIF", manager_name: "Joachim Low")
ghana = Team.create(country: "Ghana", flag_url: "http://cdn.ghanaweb.com/GHP/img/pics/79307655.jpg", manager_name: "James Kwesi Appiah")

group_a.teams.push(brazil)
group_a.teams.push(mexico)
group_a.teams.push(croatia)
group_a.teams.push(cameroon)

# group g teams

group_g.teams.push(usa)
group_g.teams.push(portugal)
group_g.teams.push(germany)
group_g.teams.push(ghana)

# group a players brazil
brazil.players.push(
Player.create(name: "Adriano", photo_url: "http://img2.timeinc.net/people/i/2007/specials/sma07/mag/adrian_grenier.jpg", position: "Forward", skill_level: 78),
Player.create(name: "Luiz Gustavo", photo_url: "http://www.fifa.com/imgml/tournament/confederationscup2013/players/xl/367918.png", position: "Midfielder", skill_level: 82),
Player.create(name: "Julio Cesar", photo_url: "http://static.goal.com/113600/113688_heroa.jpg", position: "Goalkeeper", skill_level: 75)
)
# group a players mexico
mexico.players.push(
Player.create(name: "Oribe Peralta", photo_url: "http://de10.com.mx/img/promos/oribe_t2-peralta-s.jpg", position: "Forward", skill_level: 83),
Player.create(name: "Diego Reyes", photo_url: "http://mkalty.org/wp-content/uploads/2014/06/Diego_reyes_9593921611.jpg", position: "Defender", skill_level: 77),
Player.create(name: "Jose Corona", photo_url: "http://www2.pictures.zimbio.com/gi/Jose+Corona+aN4K7q1KRvtm.jpg", position: "Goalkeeper", skill_level: 72)
)
# group a players croatia
croatia.players.push(
Player.create(name: "Oliver Zelenika", photo_url: "http://img.uefa.com/imgml/TP/players/1/2014/324x324/250005669.jpg", position: "Goalkeeper", skill_level: 79),
Player.create(name: "Mercelo Brozovic", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/380000.png", position: "Midfielder", skill_level: 70),
Player.create(name: "Eduardo", photo_url: "http://www2.pictures.zimbio.com/gi/Eduardo+Da+Silva+England+v+Croatia+FIFA2010+ocmmGYD_c9Cl.jpg", position: "Forward", skill_level: 80)
)
# group a players cameroon
cameroon.players.push(
Player.create(name: "Sammy N'Djock", photo_url: "http://www.africaplays.com/uploads/s8x5w3k6.jpg", position: "Goalkeeper", skill_level: 63),
Player.create(name: "Cedric Djeugoue", photo_url: "http://cache1.asset-cache.net/gc/495244983-cedric-djeugoue-of-cameroon-before-the-gettyimages.jpg?v=1&c=IWSAsset&k=2&d=X7WJLa88Cweo9HktRLaNXiHPq86B%2FHXg9ry26YgBvMfLdeu4whPmZTgzwc9npvyE", position: "Defender", skill_level: 62),
Player.create(name: "Vincent Aboubakar", photo_url: "http://africanfootball.com/bp_images/Aboubakar280.jpg", position: "Forward", skill_level: 81)
)
# group g usa
usa.players.push(
Player.create(name: "Tim Howard", photo_url: "http://bandofartists.org/wp-content/uploads/2012/04/tim-howard-soccer-goalie-with-tourette-syndrome.png", position: "Goalkeeper", skill_level: 88),
Player.create(name: "Clint Dempsey", photo_url: "http://football2014wc.com/wp-content/uploads/2014/03/Clint-Dempsey.png", position: "Forward", skill_level: 92),
Player.create(name: "Jermaine Jones", photo_url: "http://img.bleacherreport.net/img/images/photos/002/730/105/hi-res-84d0c4c877946613f131be70af5d2ba0_crop_north.?w=630&h=420&q=75", position: "Midfielder", skill_level: 82)
)
# group g portugal
portugal.players.push(
Player.create(name: "Christiano Ronaldo", photo_url: "http://img.timeinc.net/time/2010/time100_poll_walkup/ronaldo_cristiano.jpg", position: "Forward", skill_level: 95),
Player.create(name: "Ruben Amorim", photo_url: "https://c1.staticflickr.com/5/4109/5000091306_4e8b08cc14.jpg", position: "Midfielder", skill_level: 86),
Player.create(name: "Andre Almeida", photo_url: "http://www1.pictures.zimbio.com/gi/Andre+Almeida+Portugal+v+Luxembourg+rZZIa5wGU6ql.jpg", position: "Defender", skill_level: 86)
)
# group g germany
germany.players.push(
Player.create(name: "Miroslav Klose", photo_url: "http://i.telegraph.co.uk/multimedia/archive/00863/kloseap_863328c.jpg", position: "Forward", skill_level: 65),
Player.create(name: "Erik Durm", photo_url: "http://33.media.tumblr.com/e5c81eda763bda63a2c9020da6a55bf6/tumblr_mwzm16CCnE1rg5jtwo1_400.png", position: "Defender", skill_level: 52),
Player.create(name: "Christoph Kramer", photo_url: "http://cache4.asset-cache.net/gc/490168861-germanys-midfielder-christoph-kramer-poses-gettyimages.jpg?v=1&c=IWSAsset&k=2&d=X7WJLa88Cweo9HktRLaNXgkqu1ZLpaLBtlZNs0S%2Fy3R6EdcbJWsSxaY%2Baiw83qgn", position: "Midfielder", skill_level: 43)
)
# group g ghana
ghana.players.push(
Player.create(name: "Adam Kwarasey", photo_url: "http://ghanasoccernet.com/wp-content/uploads/2014/05/KwaraseyMTN3.jpg", position: "Goalkeeper", skill_level: 78),
Player.create(name: "Asamoah Gyan", photo_url: "http://static.weltsport.net/bilder/spieler/gross/21761.jpg", position: "Foward", skill_level: 68),
Player.create(name: "Mubarak Wakaso", photo_url: "http://images.supersport.com/2014/1/Mubarak-Wakaso-ai-300.jpg", position: "Midfielder", skill_level: 74)
)
