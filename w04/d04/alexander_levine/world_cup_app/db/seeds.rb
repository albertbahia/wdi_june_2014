Player.destroy_all
Team.destroy_all
Group.destroy_all

players = [
  {name: "Luke Skywalker", photo_url: "http://scifipulse.net/wp-content/uploads/2013/02/Luke_Skywalker_USE.jpg",
    position: "Forward", skill_level: 90,
    team: "Rebel Alliance"},
  {name: "Han Solo", photo_url: "http://static.guim.co.uk/sys-images/Film/Pix/pictures/2010/8/13/1281696650545/Han-Solo-006.jpg",
    position: "Midfielder", skill_level: 85,
    team: "Rebel Alliance"},
  {name: "Princess Leia", photo_url: "http://i.telegraph.co.uk/multimedia/archive/01204/Leia_1204530c.jpg",
    position: "Goalkeeper", skill_level: 91,
    team: "Rebel Alliance"},
  {name: "Darth Vader", photo_url: "http://2.bp.blogspot.com/-HiQLT_KTq9Y/UncDWYRXfyI/AAAAAAAARJk/yrg2txvViZs/s640/star-wars-vader-force-choke.jpg",
    position: "Forward", skill_level: 95,
    team: "Galactic Empire"},
  {name: "Grand Moff Tarkin", photo_url: "http://img4.wikia.nocookie.net/__cb20121201034918/villains/images/3/32/GMT.jpg",
    position: "Goalkeeper", skill_level: 88,
    team: "Galactic Empire"},
  {name: "Emporer Palpatine", photo_url: "http://3.bp.blogspot.com/-8qJjCyN40yE/TpL4_RS5zII/AAAAAAAAAjA/2rYyRj6zXUY/s320/PalpatinePuzzled.jpg",
    position: "Defender", skill_level: 93,
    team: "Galactic Empire"},
  {name: "Captain Picard", photo_url: "https://8chan.co/meta/thumb/1394238252086.jpg",
    position: "Defender", skill_level: 98,
    team: "United Federation of Planets"},
  {name: "Commander Riker", photo_url:"http://media.moddb.com/cache/images/groups/1/1/981/thumb_620x2000/rikerwomen.jpg",
    position: "Goalkeeper", skill_level: 83,
    team: "United Federation of Planets"},
  {name: "Lieutenant Worf", photo_url: "http://www.straight.com/files/styles/blog_main/public/Worf_130116.jpg",
    position: "Forward", skill_level: 92,
    team: "United Federation of Planets"},
  {name: "Commander Tomalak", photo_url: "http://img2.wikia.nocookie.net/__cb20130709233813/memoryalpha/en/images/thumb/c/c0/Tomalak.jpg/292px-Tomalak.jpg",
    position: "Forward", skill_level: 93,
    team: "Romulan Empire"},
  {name: "Commander Sela", photo_url: "http://img4.wikia.nocookie.net/__cb20130508195150/memoryalpha/en/images/thumb/4/49/Sela.jpg/292px-Sela.jpg",
    position: "Midfielder", skill_level: 87,
    team: "Romulan Empire"},
  {name: "Senator Pardek", photo_url: "http://img4.wikia.nocookie.net/__cb20111228172224/memoryalpha/en/images/thumb/6/64/Pardek.jpg/292px-Pardek.jpg",
    position: "Defender", skill_level: 88,
    team: "Romulan Empire"},
]

teams = [
  {country: "Rebel Alliance", flag_url: "http://media.moddb.com/cache/images/groups/1/5/4664/thumb_620x2000/rebelalliance_large.jpg",
    manager: "Admiral Ackbar",
  group: "Galaxy Far Far Away"},
  {country: "Galactic Empire", flag_url: "http://fc00.deviantart.net/fs71/i/2013/168/3/e/galactic_empire_by_emperorrus-d30lsem.jpg",
    manager: "Boba Fett",
  group: "Galaxy Far Far Away"},
  {country: "United Federation of Planets", flag_url: "http://upload.wikimedia.org/wikipedia/en/thumb/2/27/Flag_of_the_United_Federation_of_Planets.svg/600px-Flag_of_the_United_Federation_of_Planets.svg.png",
    manager: "Counselor Troy",
  group: "The Next Generation"},
  {country: "Romulan Empire", flag_url: "http://img3.wikia.nocookie.net/__cb20060815215810/stexpanded/images/thumb/6/60/Romulan_Star_Empire.jpg/640px-Romulan_Star_Empire.jpg",
    manager: "Alex Levine",
  group: "The Next Generation"}
]

groups = [
  {name: "Galaxy Far Far Away"},
  {name: "The Next Generation"}
]

groups.each do |group|
  Group.create(group)
end

star_wars = Group.find_by({name: "Galaxy Far Far Away"})
star_trek = Group.find_by({name: "The Next Generation"})

teams.each do |team|
  current_team = Team.create(team.except(:group))
end

rebels = Team.find_by({country: "Rebel Alliance"})
empire = Team.find_by({country: "Galactic Empire"})
federation = Team.find_by({country: "United Federation of Planets"})
romulans = Team.find_by({country: "Romulan Empire"})

star_wars.teams << rebels << empire
star_trek.teams << federation << romulans

players.each do |player|
  current_player = Player.create!(player.except(:team))
end

luke = Player.find_by({name: "Luke Skywalker"})
han = Player.find_by({name: "Han Solo"})
leia = Player.find_by({name: "Princess Leia"})
vader = Player.find_by({name: "Darth Vader"})
tarkin = Player.find_by({name: "Grand Moff Tarkin"})
emperor = Player.find_by({name: "Emporer Palpatine"})
picard = Player.find_by({name: "Captain Picard"})
riker = Player.find_by({name: "Commander Riker"})
worf = Player.find_by({name: "Lieutenant Worf"})
tomalak = Player.find_by({name: "Commander Tomalak"})
sela = Player.find_by({name: "Commander Sela"})
pardek = Player.find_by({name: "Senator Pardek"})

rebels.players << luke << han << leia
empire.players << vader << tarkin << emperor
federation.players << picard << riker << worf
romulans.players << tomalak << sela << pardek
