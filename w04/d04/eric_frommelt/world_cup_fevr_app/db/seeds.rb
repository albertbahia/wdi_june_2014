# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Group.destroy_all
Team.destroy_all
Player.destroy_all

a = Group.create(name:"Group A")
b = Group.create(name:"Group B")


a.teams.push(
  brazil = Team.create(country:"Brazil", photo_url:"http://upload.wikimedia.org/wikipedia/en/thumb/0/05/Flag_of_Brazil.svg/720px-Flag_of_Brazil.svg.png", manager_name:"Luiz Felipe Scolari"),
  mexico = Team.create(country:"Mexico", photo_url:"http://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Flag_of_Mexico.svg/1024px-Flag_of_Mexico.svg.png", manager_name:"Miguel Herrera"),
  croatia = Team.create(country:"Croatia", photo_url:"http://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Flag_of_Croatia.svg/1024px-Flag_of_Croatia.svg.png", manager_name:"Niko Kovač"),
  cameroon = Team.create(country:"Cameroon", photo_url:"http://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Flag_of_Cameroon.svg/600px-Flag_of_Cameroon.svg.png", manager_name:"Volker Finke")
)

b.teams.push(
  netherlands = Team.create(country:"Netherlands", photo_url:"http://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Flag_of_the_Netherlands.svg/900px-Flag_of_the_Netherlands.svg.png", manager_name:"Louis van Gaal"),
  chile = Team.create(country:"Chile", photo_url:"http://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Flag_of_Chile.svg/1024px-Flag_of_Chile.svg.png", manager_name:"Jorge Sampaoli"),
  spain = Team.create(country:"Spain", photo_url:"http://upload.wikimedia.org/wikipedia/en/thumb/9/9a/Flag_of_Spain.svg/750px-Flag_of_Spain.svg.png", manager_name:"Vicente del Bosque"),
  austraila = Team.create(country:"Austraila", photo_url:"http://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Flag_of_Australia_%28converted%29.svg/1024px-Flag_of_Australia_%28converted%29.svg.png", manager_name:"Ange Postecoglou")
)

brazil.players.push(
  Player.create(name:"Victor Bagy", photo_url:"http://cache.images.globalsportsmedia.com/soccer/players/150x150/32329.png", position:"Goalkeeper", skill_level: 88),
  Player.create(name:"Dante Bonfim", photo_url:"http://cache.images.globalsportsmedia.com/soccer/players/150x150/53129.png", position:"Defender", skill_level: 79),
  Player.create(name:"Fernando Luiz", photo_url:"http://cache.images.globalsportsmedia.com/soccer/players/150x150/19655.png", position:"Midfielder", skill_level: 79)
)

mexico.players.push(
  Player.create(name:"Francisco Guillermo", photo_url:"http://cache.images.globalsportsmedia.com/soccer/players/150x150/413.png", position:"Goalkeeper", skill_level: 86),
  Player.create(name:"Paul Nicolás", photo_url:"http://cache.images.globalsportsmedia.com/soccer/players/150x150/14350.png", position:"Defender", skill_level: 91),
  Player.create(name:"Marco Jhonfai", photo_url:"http://cache.images.globalsportsmedia.com/soccer/players/150x150/22870.png", position:"Midfielder", skill_level: 67)
)

croatia.players.push(
  Player.create(name:"Oliver Zelinika", photo_url:"http://cache.images.globalsportsmedia.com/soccer/players/150x150/158199.png", position:"Goalkeeper", skill_level: 88),
  Player.create(name:"Vedran Ćorluka", photo_url:"http://cache.images.globalsportsmedia.com/soccer/players/150x150/16067.png", position:"Defender", skill_level: 56),
  Player.create(name:"Marcelo Brozović", photo_url:"http://cache.images.globalsportsmedia.com/soccer/players/150x150/137619.png", position:"Midfielder", skill_level: 67)
)

cameroon.players.push(
  Player.create(name:"Nicolas Alexis Julio N'Koulou N'Doubena", photo_url:"http://cache.images.globalsportsmedia.com/soccer/players/150x150/39105.png", position:"Defender", skill_level: 59),
  Player.create(name:"Alexandre Dimitri Song-Billong", photo_url:"http://cache.images.globalsportsmedia.com/soccer/players/150x150/2962.png", position:"Midfielder", skill_level: 76),
  Player.create(name:"Charles-Hubert Itandje", photo_url:"http://cache.images.globalsportsmedia.com/soccer/players/150x150/1426.png", position:"Goalkeeper", skill_level: 97)
)

netherlands.players.push(
  Player.create(name:"Jasper Cillessen", photo_url:"http://cache.images.globalsportsmedia.com/soccer/players/150x150/137206.png", position:"Goalkeeper", skill_level: 74),
  Player.create(name:"Paul Verhaegh", photo_url:"http://cache.images.globalsportsmedia.com/soccer/players/150x150/2122.png", position:"Defender", skill_level: 76),
  Player.create(name:"Nigel de Jong", photo_url:"http://cache.images.globalsportsmedia.com/soccer/players/150x150/2006.png", position:"Midfielder", skill_level: 83)
)

chile.players.push(
  Player.create(name:"Gonzalo Alejandro Jara Reyes", photo_url:"http://cache.images.globalsportsmedia.com/soccer/players/150x150/10432.png", position:"Defender", skill_level: 81),
  Player.create(name:"Claudio Andrés Bravo Muñoz", photo_url:"http://cache.images.globalsportsmedia.com/soccer/players/150x150/3626.png", position:"Goalkeeper", skill_level: 91),
  Player.create(name:"Fabián Ariel Orellana Valenzuela", photo_url:"http://cache.images.globalsportsmedia.com/soccer/players/150x150/21710.png", position:"Midfielder", skill_level: 88)
)

spain.players.push(
  Player.create(name:"Xabier Alonso Olana", photo_url:"http://cache.images.globalsportsmedia.com/soccer/players/150x150/332.png", position:"Midfielder", skill_level: 67),
  Player.create(name:"Jordi Alba Ramos", photo_url:"http://cache.images.globalsportsmedia.com/soccer/players/150x150/60883.png", position:"Defender", skill_level: 85),
  Player.create(name:"Iker Casillas Fernández", photo_url:"http://cache.images.globalsportsmedia.com/soccer/players/150x150/317.png", position:"Goalkeeper", skill_level: 82)
)

austraila.players.push(
  Player.create(name:"Mile Jedinak", photo_url:"http://cache.images.globalsportsmedia.com/soccer/players/150x150/17515.png", position:"Midfielder", skill_level: 77),
  Player.create(name:"Alex Wilkinson", photo_url:"http://cache.images.globalsportsmedia.com/soccer/players/150x150/17510.png", position:"Defender", skill_level: 88),
  Player.create(name:"Mitchell Langerak", photo_url:"http://cache.images.globalsportsmedia.com/soccer/players/150x150/17528.png", position:"Goalkeeper", skill_level: 82)
)
