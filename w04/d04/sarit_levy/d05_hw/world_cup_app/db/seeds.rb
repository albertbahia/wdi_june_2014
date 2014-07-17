Group.destroy_all
Team.destroy_all
Player.destroy_all


#Group Data:

Group.create(name: "Group C")
Group.create(name: "Group D")


##############################

#Team Data:


Team.create(country: "Columbia", flag_url: "http://www.maritime-models.co.uk/acatalog/COL01.jpg", manager_name: "Jose Pekerman")
Team.create(country: "Greece", flag_url: "http://mdnautical.com/24029-large/greece-courtesy-flag.jpg", manager_name: "Fernando Santos")
Team.create(country: "Cote d'Ivoire", flag_url: "http://3.bp.blogspot.com/_dbiQRgavoZw/Swz_yrnKFdI/AAAAAAAAA1I/q28bU0-6dIM/s400/ivory-coast-flag%5B1%5D.jpg", manager_name: "Sabri Lamouchi")
Team.create(country: "Japan", flag_url: "http://static.tuoitre.vn/2014/01/QqreA1ec.jpg", manager_name: "Makoto Hasebe")


Team.create(country: "Uruguay", flag_url: "http://img2.wikia.nocookie.net/__cb20130911211416/prowrestling/images/5/59/Uruguay_flag.jpg", manager_name: "Oscar Tabarez")
Team.create(country: "Costa Rica", flag_url: "http://www.crossed-flag-pins.com/animated-flag-gif/images/Flag_Costa-Rica.jpg", manager_name: "Jorge Luis Pinto")
Team.create(country: "England", flag_url: "http://img1.wikia.nocookie.net/__cb20131019185854/marvelcinematicuniverse/images/e/e2/England_flag.jpg", manager_name: "Roy Hodgson")
Team.create(country: "Italy", flag_url: "http://img1.wikia.nocookie.net/__cb20091008234915/cybernations/images/a/a3/Italian-flag.jpg", manager_name: "Cesare Prandelli")

##############################

#Player Data:

#Group 1:

#Columbia

Player.create(name: "Mario Yepes", photo_url: " ", position: "Defender", skill_level: 0)
Player.create(name: "Carlos Sanchez", photo_url: " ", position: "Midfielder", skill_level: 0)
Player.create(name: "Jackson Martinez", photo_url: " ", position: "Forward", skill_level: 0)

# #Greece
# Player.create(name: "Orestis Karnezis", photo_url: "", position: "Goalkeeper", skill_level: 0)
# Player.create(name: "Kostas Manolas", photo_url: "", position: "Defender", skill_level: 0)
# Player.create(name: "Dimitris Salpingidis", photo_url:"", position: "Forward", skill_level: 0)
#
# #Cote d'Ivoire
# Player.create(name: "Didier Drogba", photo_url: "", position: "Forward", skill_level: 0, team_id:"")
# Player.create(name: "Kolo Toure", photo_url: "", position: "Defender", skill_level: 0, team_id:"")
# Player.create(name: "Yaya Toure", photo_url: "", position: "Midfielder", skill_level: 0, team_id:"")
#
# #Japan
# Player.create(name: "Yasuhito Endo", photo_url: "", position: "Midfielder", skill_level: 0, team_id:"")
# Player.create(name: "Masato Morishige", photo_url: "", position: "Defender", skill_level: 0, team_id:"")
# Player.create(name: "Eiji Kawashima", photo_url: "", position: "Goalkeeper", skill_level: 0, team_id:"")
#
# #
# # #Group 2:
# #
# # #Uruguay
# Player.create(name: "Alvaro Gonzalez", photo_url: "", position: "Midfielder", skill_level: 0, team_id:"")
# Player.create(name: "Maximiliano Pereira", photo_url: "", position: "Defender", skill_level: 0, team_id:"")
# Player.create(name: "Fernando Muslera", photo_url: "", position: "Goalkeeper", skill_level: 0, team_id:"")
#
# #Costa Rica
# Player.create(name: "Bryan Ruiz", photo_url: "", position: "Forward", skill_level: 0, team_id:"")
# Player.create(name: "Celso Borges", photo_url: "", position: "Midfielder", skill_level: 0, team_id:"")
# Player.create(name: "Johnny Acosta", photo_url: "", position: "Defender", skill_level: 0, team_id:"")
#
# #England
# Player.create(name: "Fraser Forster", photo_url: "", position: "Goalkeeper", skill_level: 0, team_id:"")
# Player.create(name: "Ross Barkley", photo_url: "", position: "Midfielder", skill_level: 0, team_id:"")
# Player.create(name: "Rickie Lambert", photo_url: "", position: "Forward", skill_level: 0, team_id:"")
#
# #Italy
# Player.create(name: "Andrea Barzagli", photo_url:"", position: "Defender", skill_level: 0, team_id:"")
# Player.create(name: "Andrea Pirlo", photo_url: "", position: "Midfielder", skill_level: 0, team_id:"")
# Player.create(name: "Mario Balotelli", photo_url: "", position: "Forward", skill_level: 0, team_id:"")
