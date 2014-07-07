Group.destroy_all
Team.destroy_all
Player.destroy_all

group_a = Group.create(name: 'Group A')

team_1 = Team.create(country: 'Brazil', flag_url: 'http://upload.wikimedia.org/wikipedia/en/thumb/0/05/Flag_of_Brazil.svg/1000px-Flag_of_Brazil.svg.png', manager: 'Luiz Felipe Scolari', group_id: group_a.id)
team_2 = Team.create(country: 'Mexico', flag_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Flag_of_Mexico.svg/1400px-Flag_of_Mexico.svg.png', manager: 'Miguel Herrera', group_id: group_a.id)
team_3 = Team.create(country: 'Croatia', flag_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Flag_of_Croatia.svg/1200px-Flag_of_Croatia.svg.png', manager: 'Niko Kovac', group_id: group_a.id)
team_4 = Team.create(country: 'Cameroon', flag_url: 'http://www.all-flags-world.com/country-flag/Cameroon/flag-cameroon-XL.jpg', manager: 'Volker Finke', group_id: group_a.id)

group_b = Group.create(name: 'Group B')

team_5 = Team.create(country: 'Spain', flag_url: 'http://www.onlinestores.com/flagdetective/images/download/spain-state-hi.jpg', manager: 'Vincente del Bosque', group_id: group_b.id)
team_6 = Team.create(country: 'Netherlands', flag_url: 'http://www.all-flags-world.com/country-flag/Netherlands/flag-netherlands-XL.jpg', manager: 'Louis van Gaal', group_id: group_b.id)
team_7 = Team.create(country: 'Chile', flag_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Flag_of_Chile.svg/1500px-Flag_of_Chile.svg.png', manager: 'Jorge Sampaoli', group_id: group_b.id)
team_8 = Team.create(country: 'Australia', flag_url: 'http://upload.wikimedia.org/wikipedia/commons/8/88/Flag_of_Australia_(converted).svg', manager: 'Ange Postecoglou', group_id: group_b.id)

Player.create([
  {name: "Luke Skywalker", photo_url: "http://scifipulse.net/wp-content/uploads/2013/02/Luke_Skywalker_USE.jpg",
    position: "Forward", skill_level: 90,
    team_id: team_1.id},
  {name: "Han Solo", photo_url: "http://static.guim.co.uk/sys-images/Film/Pix/pictures/2010/8/13/1281696650545/Han-Solo-006.jpg",
    position: "Midfielder", skill_level: 85,
    team_id: team_1.id},
  {name: "Princess Leia", photo_url: "http://i.telegraph.co.uk/multimedia/archive/01204/Leia_1204530c.jpg",
    position: "Goalkeeper", skill_level: 91,
    team_id: team_2.id},
  {name: "Darth Vader", photo_url: "http://2.bp.blogspot.com/-HiQLT_KTq9Y/UncDWYRXfyI/AAAAAAAARJk/yrg2txvViZs/s640/star-wars-vader-force-choke.jpg",
    position: "Forward", skill_level: 95,
    team_id: team_2.id},
  {name: "Grand Moff Tarkin", photo_url: "http://img4.wikia.nocookie.net/__cb20121201034918/villains/images/3/32/GMT.jpg",
    position: "Goalkeeper", skill_level: 88,
    team_id: team_3.id},
  {name: "Emporer Palpatine", photo_url: "http://3.bp.blogspot.com/-8qJjCyN40yE/TpL4_RS5zII/AAAAAAAAAjA/2rYyRj6zXUY/s320/PalpatinePuzzled.jpg",
    position: "Defender", skill_level: 93,
    team_id: team_3.id},
  {name: "Captain Picard", photo_url: "https://8chan.co/meta/thumb/1394238252086.jpg",
    position: "Defender", skill_level: 98,
    team_id: team_4.id},
  {name: "Commander Riker", photo_url:"http://media.moddb.com/cache/images/groups/1/1/981/thumb_620x2000/rikerwomen.jpg",
    position: "Goalkeeper", skill_level: 83,
    team_id: team_4.id},
  {name: "Lieutenant Worf", photo_url: "http://www.straight.com/files/styles/blog_main/public/Worf_130116.jpg",
    position: "Forward", skill_level: 92,
    team_id: team_5.id},
  {name: "Commander Tomalak", photo_url: "http://img2.wikia.nocookie.net/__cb20130709233813/memoryalpha/en/images/thumb/c/c0/Tomalak.jpg/292px-Tomalak.jpg",
    position: "Forward", skill_level: 93,
    team_id: team_5.id},
  {name: "Commander Sela", photo_url: "http://img4.wikia.nocookie.net/__cb20130508195150/memoryalpha/en/images/thumb/4/49/Sela.jpg/292px-Sela.jpg",
    position: "Midfielder", skill_level: 87,
    team_id: team_6.id},
  {name: "Senator Pardek", photo_url: "http://img4.wikia.nocookie.net/__cb20111228172224/memoryalpha/en/images/thumb/6/64/Pardek.jpg/292px-Pardek.jpg",
    position: "Defender", skill_level: 88,
    team_id: team_6.id},
  {name: "Senator Party", photo_url: "http://img4.wikia.nocookie.net/__cb20111228172224/memoryalpha/en/images/thumb/6/64/Pardek.jpg/292px-Pardek.jpg",
    position: "Defender", skill_level: 88,
    team_id: team_7.id},
  {name: "Senator Farty", photo_url: "http://img4.wikia.nocookie.net/__cb20111228172224/memoryalpha/en/images/thumb/6/64/Pardek.jpg/292px-Pardek.jpg",
    position: "Defender", skill_level: 88,
    team_id: team_7.id},
  {name: "Senator Hearty", photo_url: "http://img4.wikia.nocookie.net/__cb20111228172224/memoryalpha/en/images/thumb/6/64/Pardek.jpg/292px-Pardek.jpg",
    position: "Defender", skill_level: 88,
    team_id: team_8.id},
  {name: "Senator Smarty", photo_url: "http://img4.wikia.nocookie.net/__cb20111228172224/memoryalpha/en/images/thumb/6/64/Pardek.jpg/292px-Pardek.jpg",
    position: "Defender", skill_level: 88,
    team_id: team_8.id}
])