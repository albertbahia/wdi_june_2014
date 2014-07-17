
# Groups:
group_a = Group.create(name: "Group A")
group_b = Group.create(name: "Group B")

# Teams:
  argentina = Team.create({
    country: "Argentina",
    flag_url: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTGsc1uMl07f6OOBW3W6FfPxgjxoMI61ycDXGsEJbHvu2aM5EfmyuLonag",
    manager_name: "Owen Wilson"
  })
  usa = Team.create({
    country: "USA",
    flag_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/Flag_of_the_United_States_%28Pantone%29.svg/300px-Flag_of_the_United_States_%28Pantone%29.svg.png",
    manager_name: "Tom Hanks"
  })
  england = Team.create({
    country: "England",
    flag_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Flag_of_the_United_Kingdom_%283-5%29.svg/800px-Flag_of_the_United_Kingdom_%283-5%29.svg.png",
    manager_name: "Morgan Freeman"
  })
  belgium = Team.create({
    country: "Belgium",
    flag_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Government_Ensign_of_Belgium.svg/797px-Government_Ensign_of_Belgium.svg.png",
    manager_name: "Natalie Portman"
  })

  brazil = Team.create({
    country: "Brazil",
    flag_url: "http://upload.wikimedia.org/wikipedia/en/thumb/0/05/Flag_of_Brazil.svg/214px-Flag_of_Brazil.svg.png",
    manager_name: "Kiera Knightly"
  })
  colombia = Team.create({
    country: "Colombia",
    flag_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Colombia.svg/225px-Flag_of_Colombia.svg.png",
    manager_name: "Luke Wilson"
  })
  spain = Team.create({
    country: "Spain",
    flag_url: "http://upload.wikimedia.org/wikipedia/en/thumb/9/9a/Flag_of_Spain.svg/200px-Flag_of_Spain.svg.png",
    manager_name: "Zach Galifanakus"
  })
  portugal = Team.create({
    country: "Portugal",
    flag_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Flag_of_Portugal.svg/600px-Flag_of_Portugal.svg.png",
    manager_name: "Bradley Cooper"
  })

  group_a.teams.push(argentina, usa, england, belgium)
  group_b.teams.push(brazil, colombia, spain, portugal)


# Players:
argentina.players.push(
  Player.create({name: "Lionel Messi", photo_url: "http://placesheen.com/200/300", position: "forward", skill_level: 40}),
  Player.create({name: "Harry Potter", photo_url: "http://placesheen.com/300/300", position: "goalkeeper", skill_level: 20}),
  Player.create({name: "Hermione Granger", photo_url: "http://placesheen.com/400/300", position: "defender", skill_level: 50})
)

usa.players.push(
  Player.create({name: "Ron Weasley", photo_url: "http://placesheen.com/500/300", position: "defender", skill_level: 90}),
  Player.create({name: "Ginny Weasley", photo_url: "http://placesheen.com/200/300", position: "forward", skill_level: 90}),
  Player.create({name: "Alana Ramo", photo_url: "http://placesheen.com/300/300", position: "goalkeeper", skill_level: 50})
)

england.players.push(
  Player.create({name: "Olivia Hayes", photo_url: "http://placesheen.com/400/300", position: "forward", skill_level: 90}),
  Player.create({name: "Devon Wade", photo_url: "http://placesheen.com/500/300", position: "defender", skill_level: 20}),
  Player.create({name: "Gary Ramo", photo_url: "http://placesheen.com/200/300", position: "goalkeeper", skill_level: 30})
)

belgium.players.push(
  Player.create({name: "Nancy Hayes", photo_url: "http://placesheen.com/300/300", position: "forward", skill_level: 20}),
  Player.create({name: "Isaac Neill", photo_url: "http://placesheen.com/400/300", position: "defender", skill_level: 90}),
  Player.create({name: "Zach Neill", photo_url: "http://placesheen.com/500/300", position: "goalkeeper", skill_level: 80})
)

brazil.players.push(
  Player.create({name: "Zander Fryer", photo_url: "http://placesheen.com/200/200", position: "forward", skill_level: 100}),
  Player.create({name: "Suzanne Rose", photo_url: "http://placesheen.com/200/300", position: "goalkeeper", skill_level: 50}),
  Player.create({name: "Glenn Rose", photo_url: "http://placesheen.com/300/300", position: "forward", skill_level: 40})
)

colombia.players.push(
  Player.create({name: "Spenser Rose", photo_url: "http://placesheen.com/400/300", position: "forward", skill_level: 90}),
  Player.create({name: "Logan Rose", photo_url: "http://placesheen.com/500/200", position: "defender", skill_level: 80}),
  Player.create({name: "Jay Morrow", photo_url: "http://placesheen.com/100/300", position: "goalkeeper", skill_level: 70})
)

spain.players.push(
  Player.create({name: "Ayisha Fryer", photo_url: "http://placesheen.com/200/300", position: "midfielder", skill_level: 100}),
  Player.create({name: "Rana Fryer", photo_url: "http://placesheen.com/300/300", position: "defender", skill_level: 90}),
  Player.create({name: "McKenneth Scott", photo_url: "http://placesheen.com/400/300", position: "defender", skill_level: 80})
)

portugal.players.push(
  Player.create({name: "Hari Mohan", photo_url: "http://placesheen.com/500/300", position: "forward", skill_level: 90}),
  Player.create({name: "Adam Bray", photo_url: "http://placesheen.com/200/100", position: "defender", skill_level: 80}),
  Player.create({name: "Britney Spears", photo_url: "http://placesheen.com/200/200", position: "forward", skill_level: 60})
)
