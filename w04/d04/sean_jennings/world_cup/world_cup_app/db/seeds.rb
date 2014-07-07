# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = Cit()y.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

group_A = Group.create(name: "Group A")

group_B = Group.create(name: "Group B")


group_A.teams.push(
  usa = Team.create(country: "USA",flag_url: "http://www.americanmethod.com/assets/images/items/American_Flag_Waving__sticker.png", manager_name: "Jurgen Klinsman"),
  brazil = Team.create(country: "Brazil",flag_url: "http://www.flyingcolours.org/uploads/a-b/Brazil/national_flag.jpg", manager_name: "Luiz Scolari"),
  costa_rica = Team.create(country: "Costa Rica",flag_url: "http://insidecostarica.com/wp-content/uploads/2012/09/costa_rica_flag.jpeg", manager_name: "Jorge Pinto"),
  nigeria = Team.create(country: "Nigeria",flag_url: "http://www.all-flags-world.com/country-flag/Nigeria/flag-nigeria-XL.jpg", manager_name: " Daniel Amokachi")
)
group_B.teams.push(
  argentina = Team.create(country: "Argentina",flag_url: "http://www.onlinestores.com/flagdetective/images/download/argentina-hi.jpg", manager_name: "Alejandro Sebella"),
  chile = Team.create(country: "Chile",flag_url: "http://chileflag.facts.co/chileflagimage1.png", manager_name: "Jorge Sampaoli"),
  italy = Team.create(country: "Italy",flag_url: "http://www.italian-flag.org/italian-flag-640.jpg", manager_name: "Pending"),
  germany = Team.create(country: "Germany",flag_url: "http://www.german-flag.org/german-flag-640.jpg", manager_name: "Joachim Low")
)

usa.players.push(
  Player.create(name: "Deandre Yedlin", photo_url: "http://seattletimes.com/ABPub/2013/06/25/2021266193.jpg", position: "defender", skill_level: 80),
  Player.create(name: "Julian Green", photo_url: "http://www.realsaltlake.com/sites/saltlake/files/imagecache/620x350/image_nodes/2013/07/beckerman.jpg", position: "midfielder", skill_level: 80),
  Player.create(name: "Kyle Beckerman", photo_url: "http://thewhistle.com/media/uploads/soccer/julian_green_rant_sports.jpg", position:"midfielder", skill_level: 80)
)

brazil.players.push(
  Player.create(name: "Neymar", photo_url: "http://global.fncstatic.com/static/managed/img/fn-latino/sports/Neymar%20Brazil%20Spain.jpg", position: "forward", skill_level: 90),
  Player.create(name: "Hulk", photo_url: "http://static.goal.com/288500/288562_heroa.jpg", position: "forward", skill_level: 80),
  Player.create(name: "David Luiz", photo_url: "http://static.goal.com/376200/376296_heroa.jpg", position: "defender", skill_level: 80)
)

costa_rica.players.push(
  Player.create(name: "Brian Ruiz", photo_url: "http://worldsoccertalk.com/wp-content/uploads/2013/12/Ruiz-Key-600x336.jpg", position: "forward", skill_level: 90),
  Player.create(name: "Yeltzin Tejada", photo_url: "http://www.cdr.cr/sites/default/files/yeltsin_tejeda_0.jpg", position: "midfielder", skill_level: 80),
  Player.create(name: "Roy Miller", photo_url: "http://i.smimg.net/14/27/300x225/costa-rica-roy-miller.jpg", position: "defender", skill_level: 80)
)

nigeria.players.push(
  Player.create(name: "Joseph Yobo", photo_url:"http://img.fifa.com/images/fwc/2014/players/prt-3/178403.png", position: "defender", skill_level: 80),
  Player.create(name: "Vincent Enyeama", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/189300.png", position: "goalkeeper", skill_level: 85),
  Player.create(name: "Ruben Gabriel", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/356710.png", position: "midfielder", skill_level: 80)
)

argentina.players.push(
  Player.create(name: "Lionel Messi", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/229397.png", position: "forward", skill_level: 95),
  Player.create(name: "Enzo Perez", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/229397.png", position: "midfielder", skill_level: 80),
  Player.create(name: "Hugo Campagnaro", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/356612.png", position: "defender", skill_level: 80)
)

chile.players.push(
  Player.create(name: "Claudio Bravo", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/202650.png", position: "goalkeeper", skill_level: 80),
  Player.create(name: "Jose Rojas", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/245156.png", position: "defender", skill_level: 80),
  Player.create(name: "Marcelo Diaz", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/233530.png", position: "midfielder", skill_level: 80)
)

italy.players.push(
  Player.create(name: "Mario Balotelli", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/301059.png", position: "forward", skill_level: 90),
  Player.create(name: "Thiago Motta", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/175689.png" , position: "midfielder" , skill_level: 80),
  Player.create(name: "Andrea Pirlo" , photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/177876.png" , position: "midfielder" , skill_level: 80)
)

germany.players.push(
  Player.create(name: "Jerome Boateng" , photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/299442.png", position: "defender", skill_level: 80),
  Player.create(name: "Erik Durm" , photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/379952.png", position: "defender", skill_level: 80),
  Player.create(name: "Toni Kroos" , photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/275162.png", position: "midfielder", skill_level: 80)
)
