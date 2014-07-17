#groups
tigers = Group.create(name: "Tigers")
zbest = Group.create(name: "Z Best")

#teams
germany = Team.create(country: "Germany", flag_url: "http://www.leobaeck.org.il/manager/FilesSrc/Galleries/ImgManager/deligations/germany_flag.jpg", manager_name: "Joachim Low")
portugal = Team.create(country: "Portugal", flag_url: "http://www.donnu.edu.ua/uk-ua/Department-of-International-Cooperation/PublishingImages/Portugal_Flag_10.jpg", manager_name: "Paulo Bento")
ghana = Team.create(country: "Ghana", flag_url: "http://cdn.ghanaweb.com/GHP/img/pics/79307655.jpg", manager_name: "Akwasi Appiah")
mexico = Team.create(country: "Mexico", flag_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Flag_of_Mexico_(1916-1934).svg/500px-Flag_of_Mexico_(1916-1934).svg.png", manager_name: "Miguel Herrera")
usa = Team.create(country: "USA", flag_url: "https://2.bp.blogspot.com/-YO0sAevEaD4/UFiXPsZhZqI/AAAAAAAAAIQ/Tlkv0wUFGJI/s400/USA_printables_flag.jpg", manager_name: "Jurgen Klinsmann")
brazil = Team.create(country: "Brazil", flag_url: "http://hd.wallpaperswide.com/thumbs/brazil-t2.jpg", manager_name: "Luiz Felipe Scolari")
columbia = Team.create(country: "Columbia", flag_url: "http://www.mapsofworld.com/images/world-countries-flags/colombia-flag.gif", manager_name: "Jose Pekerman")
france = Team.create(country: "France", flag_url: "http://www.mapsofworld.com/images/world-countries-flags/france-flag.gif", manager_name: "Didier Deschamps")

#push teams to groups
tigers.teams.push(germany, portugal, ghana, mexico)
zbest.teams.push(usa, brazil, columbia, france)

#players
usa.players.push(
	Player.create(name: "Jozy Altidore", position: "Forward", skill_level: 70, photo_url: "http://www.freegreatimages.com/wp-content/uploads/2014/06/jozy-altidore-2.jpg"),
	Player.create(name: "Clint Dempsey", position: "Forward", skill_level: 90, photo_url: "http://worldsoccertalk.com/wp-content/uploads/2014/04/usmnt-world-cup-away-shirt-clint-dempsey-back.jpg"),
	Player.create(name: "Kyle Beckerman", position: "Midfielder", skill_level: 85, photo_url: "http://www.mlssoccer.com/sites/league/files/beckerman-with-USMNT.jpg")
	)

germany.players.push(
	Player.create(name: "Miroslav Klose", position: "Forward", skill_level: 65, photo_url: "http://picsndquotes.com/wp-content/uploads/2014/06/Miroslav-Klose-photos-226x300.jpg"),	
	Player.create(name: "Manuel Neuer", position: "Goalkeeper", skill_level: 85, photo_url: "http://www.gq-magazin.de/var/gq/storage/images/media/images/artikelbilder/unterhaltung/manuel-neuer_120804700-quer/2754316-3-ger-DE/manuel-neuer_120804700-quer_article_landscape.jpg"),
	Player.create(name: "Bastian Schweinsteiger", position: "Midfielder", skill_level: 95, photo_url: "http://ztona.net/wp-content/uploads/2014/05/bastian_schweinsteiger33.jpg")
)
portugal.players.push(
	Player.create(name: "Cristiano Ronaldo", position: "Forward", skill_level: 99, photo_url: "http://img.fifa.com/images/fwc/2014/players/sqr-5/201200.png"),
	Player.create(name: "Nani", position: "Midfielder", skill_level: 80, photo_url: "http://img.fifa.com/images/fwc/2014/players/sqr-5/254167.png"),
	Player.create(name: "Pepe", position: "Defender", skill_level: 60, photo_url: "http://img.fifa.com/images/fwc/2014/players/sqr-5/275931.png")
	)

ghana.players.push(
	Player.create(name: "Asamoah Gyan", position: "Forward", skill_level: 90, photo_url: "http://img.fifa.com/images/fwc/2014/players/sqr-5/208353.png"),
	Player.create(name: "Sulley Muntari", position: "Midfielder", skill_level: 80, photo_url: "http://img.fifa.com/images/fwc/2014/players/sqr-5/183000.png"),
	Player.create(name: "Fatau Dauda", position: "Goalkeeper", skill_level: 80, photo_url: "http://img.fifa.com/images/fwc/2014/players/sqr-5/376071.png")
	)

mexico.players.push(
	Player.create(name: "Rafael Marquez", position: "Defender", skill_level: 75, photo_url: "http://img.fifa.com/images/fwc/2014/players/sqr-5/178119.png"),
	Player.create(name: "Guillermo Ochoa", position: "Goalkeeper", skill_level: 90, photo_url: "http://img.fifa.com/images/fwc/2014/players/sqr-5/215285.png"),
	Player.create(name: "Oribe Peralta", position: "Forward", skill_level: 90, photo_url: "http://img.fifa.com/images/fwc/2014/players/sqr-5/227851.png")
	)

brazil.players.push(
	Player.create(name: "Neymar", position: "Forward", skill_level: 86, photo_url: "http://img.fifa.com/images/fwc/2014/players/sqr-5/314197.png"),
	Player.create(name: "David Luiz", position: "Defender", skill_level: 75, photo_url: "http://img.fifa.com/images/fwc/2014/players/sqr-5/271043.png"),
	Player.create(name: "Julio Caesar", position: "Goalkeeper", skill_level: 99, photo_url: "http://img.fifa.com/images/fwc/2014/players/sqr-5/179038.png")
	)

columbia.players.push(
	Player.create(name: "Juan Guillermo Cuadrado", position: "Midfielder", skill_level: 79, photo_url: "http://img.fifa.com/images/fwc/2014/players/sqr-5/309714.png"),
	Player.create(name: "Mario Yepes", position: "Defender", skill_level: 80, photo_url: "http://img.fifa.com/images/fwc/2014/players/sqr-5/3408.png"),
	Player.create(name: "James Rodriguez", position: "Midfielder", skill_level: 90, photo_url: "http://img.fifa.com/images/fwc/2014/players/sqr-5/269058.png")
	)

france.players.push(
	Player.create(name: "Karim Benzema", position: "Forward", skill_level: 90, photo_url: "http://img.fifa.com/images/fwc/2014/players/sqr-5/297103.png"),
	Player.create(name: "Paul Pogba", position: "Midfielder", skill_level: 75, photo_url: "http://img.fifa.com/images/fwc/2014/players/sqr-5/367388.png"),
	Player.create(name: "Hugo Lloris", position: "Goalkeeper", skill_level: 80, photo_url: "http://img.fifa.com/images/fwc/2014/players/sqr-5/297105.png")
	)