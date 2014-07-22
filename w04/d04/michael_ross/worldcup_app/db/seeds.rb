Group.destroy_all
Team.destroy_all
Player.destroy_all

spain = Team.create(
  country: "Spain",
  flag_url: "http://4.bp.blogspot.com/-aw-4MOa8Tr8/TpmPDO9xNKI/AAAAAAAAAd4/i4br46CK3rE/s320/1259497217941_f.jpg",
  manager: "Carlo Ancelotti"
)
portugal = Team.create(
  country: "Portugal",
  flag_url: "http://image.rakuten.co.jp/fanshop/cabinet/fl/fl59b.jpg",
  manager: "Luis Enrique Martinez Garcia"
)
france = Team.create(
  country: "France",
  flag_url: "http://www.puzzlepuzzles.com/imatjes/flag-of-valencia-c-f_4ab34da9588f0-p.jpg",
  manager: "Juan Antonio Pizzi"
)
germany = Team.create(
  country: "Germany",
  flag_url: "http://i1176.photobucket.com/albums/x321/Soccerlogos/La%20Liga/realsociedad.jpg",
  manager: "Jagoba Arrasate"
)
uk = Team.create(
  country: "United Kingdom",
  flag_url: "http://www.uksoccershop.com/images/11561.jpg",
  manager: "Arsene Wenger"
)
brazil = Team.create(
  country: "Brazil",
  flag_url: "http://www.1000flags.co.uk/ekmps/shops/1000flagsuk/images/manchester-united-football-club-flag-crest-3830-p.jpg",
  manager: "Louis van Gaal"
)
venezuela = Team.create(
  country: "Venezuela",
  flag_url: "http://www.footballfeverandfun.com/files/2009645/uploaded/DSC07179.JPG",
  manager: "Jose Mourinho"
)
usa = Team.create(
  country: "United States",
  flag_url: "http://www.1000flags.co.uk/ekmps/shops/1000flagsuk/images/newcastle-united-football-club-flag-crest-3823-p.jpg",
  manager: "Alan Pardew"
)



spain.players.push(
  Player.create(
    name: "Xabier Alonso Olana",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/332.png",
    position: "Midfielder",
    skill_level: 50,
  ),
  Player.create(
    name: "Sergio Ramos Garcia",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/326.png",
    position: "Defender",
    skill_level: 65
  ),
  Player.create(
    name: "Iker Casillas Fernandez",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/317.png",
    position: "Goalkeeper",
    skill_level: 75
  )
)
portugal.players.push(
  Player.create(
    name: "Jordi Alba Ramos",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/60883.png",
    position: "Defender",
    skill_level: 89
  ),
  Player.create(
    name: "Xavier Hernandez Creus",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/333.png",
    position: "Midfielder",
    skill_level: 70
  ),
  Player.create(
    name: "Gerard Pique Bernabeu",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/10605.png",
    position: "Defender",
    skill_level: 81
  )
)
france.players.push(
  Player.create(
    name: "Eduardo Jesús Vargas Rojas",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/21913.png",
    position: "Forward",
    skill_level: 84
    ),
  Player.create(
    name: "Ricardo Miguel Moreira da Costa",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/364.png",
    position: "Defender",
    skill_level: 44
    ),
  Player.create(
    name: "Philippe Senderos",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/204.png",
    position: "Defender",
    skill_level: 24
  )
)
germany.players.push(
  Player.create(
    name: "Claudio Andrés Bravo Muñoz",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/3626.png",
    position: "Goalkeeper",
    skill_level: 44
    ),
  Player.create(
    name: "Antoine Griezmann",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/92385.png",
    position: "Forward",
    skill_level: 52
    ),
  Player.create(
    name: "Haris Seferović",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/77888.png",
    position: "Forward",
    skill_level: 90
    )
  )
uk.players.push(
  Player.create(
    name: "Olivier Giroud",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/59504.png",
    position: "Forward",
    skill_level: 62
    ),
  Player.create(
    name: "Jack Wilshere",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/61075.png",
    position: "Midfielder",
    skill_level: 62
    ),
  Player.create(
    name: "Alex Oxlade-Chamberlain",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/120695.png",
    position: "Forward",
    skill_level: 62
  )
)
brazil.players.push(
  Player.create(
    name: "Marouane Fellaini-Bakkioui",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/13519.png",
    position: "Midfielder",
    skill_level: 58
    ),
  Player.create(
    name: "Patrice Evra",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/2909.png",
    position: "Defender",
    skill_level: 58
    ),
  Player.create(
    name: "Phil Jones",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/97299.png",
    position: "Defender",
    skill_level: 58
  )
)
venezuela.players.push(
  Player.create(
    name: "Samuel Eto'o Fils",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/2994.png",
    position: "Forward",
    skill_level: 52
    ),
  Player.create(
    name: "Oscar dos Santos Emboaba Júnior",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/57860.png",
    position: "Midfielder",
    skill_level: 52
    ),
  Player.create(
    name: "Gary Cahill",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/2797.png",
    position: "Defender",
    skill_level: 52
  )
)
usa.players.push(
  Player.create(
    name: "Tim Krul",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/5256.png",
    position: "Goalkeeper",
    skill_level: 63
    ),
  Player.create(
    name: "Shola Ameobi",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/2905.png",
    position: "Forward",
    skill_level: 63
    ),
  Player.create(
    name: "Mathieu Debuchy",
    photo_url: "http://cache.images.globalsportsmedia.com/soccer/players/150x150/2066.png",
    position: "Defender",
    skill_level: 63
    )
    )

a = Group.create(name: 'A')
b = Group.create(name: 'B')
a.teams.push(spain, portugal, france, germany)
b.teams.push(uk, brazil, venezuela, usa)
