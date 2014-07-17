Player.destroy_all
Team.destroy_all
Group.destroy_all

group_a = Group.create(name: "Group A")
group_b = Group.create(name: "Group B")
group_c = Group.create(name: "Group C")

group_a.teams.push(
  brazil = Team.create(
    country: "Brazil",
    flag_url: "http://cache.images.globalsportsmedia.com/soccer/teams/150x150/349.png",
    manager_name: "Luiz Felipe Scolari"
  ),
  cameroon = Team.create(
    country: "Cameroon",
    flag_url: "http://cache.images.globalsportsmedia.com/soccer/teams/150x150/386.png",
    manager_name: "Volker Finke"
  ),
  croatia = Team.create(
    country: "Croatia",
    flag_url: "http://cache.images.globalsportsmedia.com/soccer/teams/150x150/514.png",
    manager_name: "Niko Kovac"
  ),
  mexico = Team.create(
    country: "Mexico",
    flag_url: "http://cache.images.globalsportsmedia.com/soccer/teams/150x150/1497.png",
    manager_name: "Miguel Herrera"
  )
)

group_b.teams.push(
  australia = Team.create(
    country: "Australia",
    flag_url: "http://cache.images.globalsportsmedia.com/soccer/teams/150x150/156.png",
    manager_name: "Ange Postecoglou"
  ),
  chile = Team.create(
    country: "Chile",
    flag_url: "http://cache.images.globalsportsmedia.com/soccer/teams/150x150/424.png",
    manager_name: "Jorge Sampaoli"
  ),
  netherlands = Team.create(
    country: "Netherlands",
    flag_url: "http://cache.images.globalsportsmedia.com/soccer/teams/150x150/1552.png",
    manager_name: "Louis van Gaal"
  ),
  spain = Team.create(
    country: "Spain",
    flag_url: "http://cache.images.globalsportsmedia.com/soccer/teams/150x150/2137.png",
    manager_name: "Vincente del Bosque"
  )
)

group_c.teams.push(
  colombia = Team.create(
    country: "Colombia",
    flag_url: "http://cache.images.globalsportsmedia.com/soccer/teams/150x150/473.png",
    manager_name: "Jose Pekerman"
  ),
  greece = Team.create(
    country: "Greece",
    flag_url: "http://cache.images.globalsportsmedia.com/soccer/teams/150x150/1091.png",
    manager_name: "Fernando Santos"
  ),
  ivory_coast = Team.create(
    country: "Ivory Coast",
    flag_url: "http://cache.images.globalsportsmedia.com/soccer/teams/150x150/598.png",
    manager_name: "Sabri Lamouchi"
  ),
  japan = Team.create(
    country: "Japan",
    flag_url: "http://cache.images.globalsportsmedia.com/soccer/teams/150x150/1348.png",
    manager_name: "Alberto Zaccheroni"
  )
)

brazil.players.push(
  Player.create(
    name: "Neymar da Silva Santos Junior",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/102697.png",
    position: "Attacker",
    skill_level: 87
  ),
  Player.create(
    name: "Givanildo Vieira de Souza",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/30484.png",
    position: "Attacker",
    skill_level: 70
  ),
  Player.create(
    name: "Daniel Alves da Silva",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/3123.png",
    position: "Defender",
    skill_level: 62
  )
)

cameroon.players.push(
  Player.create(
    name: "Nicolas Alexis Julio N'Koulou N'Doubena",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/39105.png",
    position: "Defnder",
    skill_level: 58
  ),
  Player.create(
    name: "Alexandre Dimitri Song-Billong",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/2962.png",
    position: "Midfielder",
    skill_level: 64
  ),
  Player.create(
    name: "Stéphane M'Bia Etoundi",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/1462.png",
    position: "Midfielder",
    skill_level: 63
  ),
  Player.create(
    name: "Landry Joel Tsafack N'Guémo",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/1217.png",
    position: "Midfielder",
    skill_level: 65
  )
)

croatia.players.push(
  Player.create(
    name: "Mario Mandžukić",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/20303.png",
    position: "Attacker",
    skill_level: 72
  ),
  Player.create(
    name: "Danijel Subašić",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/37450.png",
    position: "Goalkeeper",
    skill_level: 70
  ),
  Player.create(
    name: "Gordon Schildenfeld",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/20295.png",
    position: "Defender",
    skill_level: 64
  ),
  Player.create(
    name: "Luka Modrić",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/365.png",
    position: "Midfielder",
    skill_level: 59
  )
)

mexico.players.push(
  Player.create(
    name: "Francisco Guillermo Ochoa Magaña",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/413.png",
    position: "Goalkeeper",
    skill_level: 78
  ),
  Player.create(
    name: "Paul Nicolás Aguilar Rojas",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/14350.png",
    position: "Defender",
    skill_level: 74
  ),
  Player.create(
    name: "Oribe Peralta Morones",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/15234.png",
    position: "Attacker",
    skill_level: 68
  ),
  Player.create(
    name: "Alfredo Talavera Díaz",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/15128.png",
    position: "Goalkeeper",
    skill_level: 60
  )
)

australia.players.push(
  Player.create(
    name: "Mile Jedinak",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/17515.png",
    position: "Midfielder",
    skill_level: 75
  ),
  Player.create(
    name: "Eugene Galeković",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/17527.png",
    position: "Goalkeeper",
    skill_level: 70
  ),
  Player.create(
    name: "Alex Wilkinson",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/17510.png",
    position: "Defender",
    skill_level: 65
  ),
  Player.create(
    name: "Oilver Bozanić",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/5319.png",
    position: "Midfielder",
    skill_level: 62
  )
)

chile.players.push(
  Player.create(
    name: "Gonzalo Alejandro Jara Reyes",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/10432.png",
    position: "Defender",
    skill_level: 74
  ),
  Player.create(
    name: "José Manuel Rojas Bahamondes",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/21751.png",
    position: "Defender",
    skill_level: 65
  ),
  Player.create(
    name: "Claudio Andrés Bravo Muñoz",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/3626.png",
    position: "Goalkeeper",
    skill_level: 55
  ),
  Player.create(
    name: "Fabián Ariel Orellana Valenzuela",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/21710.png",
    position: "Midfielder",
    skill_level: 66
  )
)

netherlands.players.push(
  Player.create(
    name: "Robin van Persie",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/49.png",
    position: "Attacker",
    skill_level: 84
  ),
  Player.create(
    name: "Wesley Sneijder",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/34.png",
    position: "Midfielder",
    skill_level: 79
  ),
  Player.create(
    name: "Leroy Fer",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/24308.png",
    position: "Midfielder",
    skill_level: 74
  ),
  Player.create(
    name: "Jonathan de Guzmán",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/2259.png",
    position: "Midfielder",
    skill_level: 72
  )
)

spain.players.push(
  Player.create(
    name: "Xabier Alonso Olana",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/332.png",
    position: "Midfielder",
    skill_level: 74
  ),
  Player.create(
    name: "Juan Manuel Mata García",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/19106.png",
    position: "Attacker",
    skill_level: 79
  ),
  Player.create(
    name: "David Villa Sánchez",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/338.png",
    position: "Attacker",
    skill_level: 88
  ),
  Player.create(
    name: "Fernando José Torres Sanz",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/334.png",
    position: "Attacker",
    skill_level: 82
  )
)

colombia.players.push(
  Player.create(
    name: "Jackson Arley Martínez Valencia",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/22504.png",
    position: "Attacker",
    skill_level: 85
  ),
  Player.create(
    name: "Juan Fernando Quintero Paniagua",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/74510.png",
    position: "Attacker",
    skill_level: 78
  ),
  Player.create(
    name: "Juan Guillermo Cuadrado Bello",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/61414.png",
    position: "Midfielder",
    skill_level: 72
  ),
  Player.create(
    name: "Teófilo Antonio Gutiérrez Roncancio",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/22353.png",
    position: "Attacker",
    skill_level: 66
  )
)

greece.players.push(
  Player.create(
    name: "Sokratis Papastathopoulos",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/19278.png",
    position: "Defender",
    skill_level: 72
  ),
  Player.create(
    name: "Orestis Karnezis",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/19129.png",
    position: "Goalkeeper",
    skill_level: 70
  ),
  Player.create(
    name: "Theofanis Gekas",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/4478.png",
    position: "Attacker",
    skill_level: 62
  ),
  Player.create(
    name: "Dimitris Salpingidis",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/19150.png",
    position: "Attacker",
    skill_level: 54
  )
)

ivory_coast.players.push(
  Player.create(
    name: "Salomon Armand Magloire Kalou",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/2540.png",
    position: "Attacker",
    skill_level: 69
  ),
  Player.create(
    name: "Didier Ya Konan",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/7913.png",
    position: "Attacker",
    skill_level: 66
  ),
  Player.create(
    name: "Serge Aurier",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/155098.png",
    position: "Defender",
    skill_level: 62
  ),
  Player.create(
    name: "Souleymane Bamba",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/38532.png",
    position: "Defender",
    skill_level: 52
  )
)

japan.players.push(
  Player.create(
    name: "Keisuke Honda",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/5797.png",
    position: "Attacker",
    skill_level: 79
  ),
  Player.create(
    name: "Shuichi Gonda",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/5535.png",
    position: "Goalkeeper",
    skill_level: 72
  ),
  Player.create(
    name: "Masahiko Inoha",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/5550.png",
    position: "Defender",
    skill_level: 63
  ),
  Player.create(
    name: "Atsuto Uchida",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/5623.png",
    position: "Defender",
    skill_level: 61
  )
)
