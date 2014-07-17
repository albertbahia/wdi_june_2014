# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Player.destroy_all
Team.destroy_all
Group.destroy_all

brazil = Team.create(country: "Brazil", flag_url: "http://typophile.com/files/Brazil-Flag-Wallpapers-1920x1200_6052.jpg", manager_name: "Scolari Luiz Felipe")
mexico = Team.create(country: "Mexico", flag_url: "http://www.lespetitesgourmettes.com/wp-content/uploads/2013/05/flag-of-Mexico.jpg", manager_name: "Scolari Luiz Felipe")
croatia = Team.create(country: "Croatia", flag_url: "http://mapsofworld.himmera.com/flags/Croatia_Flag_big.jpg", manager_name: "Scolari Luiz Felipe")
cameroon = Team.create(country: "Cameroon", flag_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Flag_of_Cameroon.svg/600px-Flag_of_Cameroon.svg.png", manager_name: "Fenke Volker")

germany = Team.create(country: "Germany", flag_url: "http://www.enchantedlearning.com/europe/germany/flag/Flagbig.GIF", manager_name: "Loew Joachim")
usa = Team.create(country: "USA", flag_url: "http://flag-metomorphoses.net/wp-content/uploads/2011/03/USA-flag.jpg", manager_name: "Klinsmann Juergen")
portugal = Team.create(country: "Portugal", flag_url: "http://mapsofworld.himmera.com/flags/Portugal_Flag_big.jpg", manager_name: "PAULO BENTO")
ghana = Team.create(country: "Ghana", flag_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Flag_of_Ghana.svg/450px-Flag_of_Ghana.svg.png", manager_name: "Fenke Volker")

brazil.players.push(
	Player.create(
		name: 'Jefferson', 
		photo_url: 'http://img.fifa.com/images/fwc/2014/players/prt-3/184320.png', 
		position: 'Goalkeeper',
		skill_level: '51',
	),
	Player.create(
		name: 'Neymar', 
		photo_url: 'http://img.fifa.com/images/fwc/2014/players/prt-3/314197.png', 
		position: 'Forward',
		skill_level: '70',
	),
	Player.create(
		name: 'Oscar', 
		photo_url: 'http://img.fifa.com/images/fwc/2014/players/prt-3/312868.png', 
		position: 'Midfielder',
		skill_level: '65',
	)
)

mexico.players.push(
	Player.create(
		name: 'Jose Corona', 
		photo_url: 'http://img.fifa.com/images/fwc/2014/players/prt-3/195231.png', 
		position: 'Goalkeeper',
		skill_level: '71',
	),
	Player.create(
		name: 'Paul Aguilar', 
		photo_url: 'http://img.fifa.com/images/fwc/2014/players/prt-3/289195.png', 
		position: 'Defender',
		skill_level: '70',
	),
	Player.create(
		name: 'Marco Fabian', 
		photo_url: 'http://img.fifa.com/images/fwc/2014/players/prt-3/319311.png', 
		position: 'Midfielder',
		skill_level: '65',
	)
)

croatia.players.push(
	Player.create(
		name: 'Stipe Pletikosa', 
		photo_url: 'http://img.fifa.com/images/fwc/2014/players/prt-3/179048.png', 
		position: 'Goalkeeper',
		skill_level: '61',
	),
	Player.create(
		name: 'Mario Mandzukic', 
		photo_url: 'http://img.fifa.com/images/fwc/2014/players/prt-3/375518.png', 
		position: 'Forward',
		skill_level: '80',
	),
	Player.create(
		name: 'Vedran Corluka', 
		photo_url: 'http://img.fifa.com/images/fwc/2014/players/prt-3/297373.png', 
		position: 'Defender',
		skill_level: '75',
	)
)

cameroon.players.push(
	Player.create(
		name: 'Loic Feudjou', 
		photo_url: 'http://img.fifa.com/images/fwc/2014/players/prt-3/355859.png', 
		position: 'Goalkeeper',
		skill_level: '60',
	),
	Player.create(
		name: 'Fabrice Olinga', 
		photo_url: 'http://img.fifa.com/images/fwc/2014/players/prt-3/367396.png', 
		position: 'Forward',
		skill_level: '80',
	),
	Player.create(
		name: 'Stephane Mbia', 
		photo_url: 'http://img.fifa.com/images/fwc/2014/players/prt-3/200935.png', 
		position: 'Midfielder',
		skill_level: '75',
	)
)
#========================GROUP 2 ============================
germany.players.push(
	Player.create(
		name: 'Manuel NEUER', 
		photo_url: 'http://img.fifa.com/images/fwc/2014/players/prt-3/228912.png', 
		position: 'Goalkeeper',
		skill_level: '68',
	),
	Player.create(
		name: 'Lukas PODOLSKI', 
		photo_url: 'http://img.fifa.com/images/fwc/2014/players/prt-3/196789.png', 
		position: 'Forward',
		skill_level: '67',
	),
	Player.create(
		name: 'Sami KHEDIRA', 
		photo_url: 'http://img.fifa.com/images/fwc/2014/players/prt-3/196900.png', 
		position: 'Midfielder',
		skill_level: '69',
	)
)

usa.players.push(
	Player.create(
		name: 'Tim HOWARD', 
		photo_url: 'http://img.fifa.com/images/fwc/2014/players/prt-3/178420.png', 
		position: 'Goalkeeper',
		skill_level: '56',
	),
	Player.create(
		name: 'Aron JOHANNSSON', 
		photo_url: 'http://img.fifa.com/images/fwc/2014/players/prt-3/367347.png', 
		position: 'Forward',
		skill_level: '60',
	),
	Player.create(
		name: 'Kyle BECKERMAN', 
		photo_url: 'http://img.fifa.com/images/fwc/2014/players/prt-3/175512.png', 
		position: 'Midfielder',
		skill_level: '65',
	)
)

portugal.players.push(
	Player.create(
		name: 'Luis NETO', 
		photo_url: 'http://img.fifa.com/images/fwc/2014/players/prt-3/359428.png', 
		position: 'Defender',
		skill_level: '68',
	),
	Player.create(
		name: 'Raul MEIRELES', 
		photo_url: 'http://img.fifa.com/images/fwc/2014/players/prt-3/210214.png', 
		position: 'Midfielder',
		skill_level: '70',
	),
	Player.create(
		name: 'Joao MOUTINHO', 
		photo_url: 'http://img.fifa.com/images/fwc/2014/players/prt-3/200199.png', 
		position: 'Midfielder',
		skill_level: '78',
	)
)

ghana.players.push(
	Player.create(
		name: 'Andre AYEW', 
		photo_url: 'http://img.fifa.com/images/fwc/2014/players/prt-3/294620.png', 
		position: 'Midfielder',
		skill_level: '60',
	),
	Player.create(
		name: 'Stephen ADAMS', 
		photo_url: 'http://img.fifa.com/images/fwc/2014/players/prt-3/323574.png', 
		position: 'Goalkeeper',
		skill_level: '70',
	),
	Player.create(
		name: 'Sulley MUNTARI', 
		photo_url: 'http://img.fifa.com/images/fwc/2014/players/prt-3/183000.png', 
		position: 'Midfielder',
		skill_level: '65',
	)
)


a = Group.create(name: 'A')
g = Group.create(name: 'H')

a.teams.push(brazil, mexico, croatia, cameroon)
g.teams.push(germany, usa, portugal,ghana)
