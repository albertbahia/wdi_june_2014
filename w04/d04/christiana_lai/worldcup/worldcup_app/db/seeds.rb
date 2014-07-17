Group.destroy_all
Team.destroy_all
Player.destroy_all

group_a = Group.create(name: 'Group A')

team_1 = Team.create(country: 'Brazil', flag_url: 'http://upload.wikimedia.org/wikipedia/en/thumb/0/05/Flag_of_Brazil.svg/429px-Flag_of_Brazil.svg.png', manager: 'Luiz Felipe Scolari', group_id: group_a.id)
team_2 = Team.create(country: 'Mexico', flag_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Flag_of_Mexico.svg/525px-Flag_of_Mexico.svg.png', manager: 'Miguel Herrera', group_id: group_a.id)
team_3 = Team.create(country: 'Croatia', flag_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Flag_of_Croatia.svg/1200px-Flag_of_Croatia.svg.png', manager: 'Niko Kovac', group_id: group_a.id)
team_4 = Team.create(country: 'Cameroon', flag_url: 'http://www.all-flags-world.com/country-flag/Cameroon/flag-cameroon-XL.jpg', manager: 'Volker Finke', group_id: group_a.id)

group_b = Group.create(name: 'Group B')

team_5 = Team.create(country: 'Netherlands', flag_url: 'http://www.all-flags-world.com/country-flag/Netherlands/flag-netherlands-XL.jpg', manager: 'Louis van Gaal', group_id: group_b.id)
team_6 = Team.create(country: 'Chile', flag_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Flag_of_Chile.svg/1500px-Flag_of_Chile.svg.png', manager: 'Jorge Sampaoli', group_id: group_b.id)
team_7 = Team.create(country: 'Spain', flag_url: 'http://www.onlinestores.com/flagdetective/images/download/spain-state-hi.jpg', manager: 'Vincente del Bosque', group_id: group_b.id)
team_8 = Team.create(country: 'Australia', flag_url: 'http://www.itsanhonour.gov.au/symbols/images/flag_template_colour.gif', manager: 'Ange Postecoglou', group_id: group_b.id)

Player.create([
  {name: "Neymar da Silva Santos", photo_url: "http://img.fifa.com/images/fwc/2014/players/sqr-5/314197.png",
    position: "Forward", skill_level: 89,
    team_id: team_1.id},
  {name: "Jo Alves de Assis Silva", photo_url: "http://img.fifa.com/images/fwc/2014/players/sqr-5/217172.png",
    position: "Forward", skill_level: 88,
    team_id: team_1.id},
  {name: "David Luiz", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/271043.png",
    position: "Defender", skill_level: 87,
    team_id: team_1.id},

  {name: "Alfredo Talavera", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/175546.png",
    position: "Goalkeeper", skill_level: 91,
    team_id: team_2.id},
  {name: "Oribe Peralta", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/227851.png",
    position: "Forward", skill_level: 89,
    team_id: team_2.id},
  {name: "Hector Moreno", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/238112.png",
    position: "Forward", skill_level: 86,
    team_id: team_2.id},


  {name: "Oliver Zelenika", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/369026.png",
    position: "Goalkeeper", skill_level: 75,
    team_id: team_3.id},
  {name: "Vedran Corluka", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/297373.png",
    position: "Defender", skill_level: 92,
    team_id: team_3.id},
  {name: "Ivan Rakitic", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/296633.png",
    position: "Midfielder", skill_level: 92,
    team_id: team_3.id},

  {name: "Nicolas Nkoulou", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/290931.png",
    position: "Defender", skill_level: 88,
    team_id: team_4.id},
  {name: "Loic Feudjou", photo_url:"http://img.fifa.com/images/fwc/2014/players/prt-3/355859.png",
    position: "Goalkeeper", skill_level: 81,
    team_id: team_4.id},
  {name: "Eric Choupo Moting", photo_url:"http://img.fifa.com/images/fwc/2014/players/prt-3/312316.png",
    position: "Forward", skill_level: 82,
    team_id: team_4.id},

  {name: "Georginio Wijnaldum", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/319438.png",
    position: "Midfielder", skill_level: 89,
    team_id: team_5.id},
  {name: "Joel Veltman", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/313051.png",
    position: "Defender", skill_level: 85,
    team_id: team_5.id},
  {name: "Tim Krul", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/232760.png",
    position: "Goalkeeper", skill_level: 96,
    team_id: team_5.id},

  {name: "Miiko Albornoz", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/379894.png",
    position: "Defender", skill_level: 78,
    team_id: team_6.id},
  {name: "Gonzalo Jara", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/229439.png",
    position: "Defender", skill_level: 90,
    team_id: team_6.id},
  {name: "Jose Fuenzalida", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/229440.png",
    position: "Midfielder", skill_level: 91,
    team_id: team_6.id},

  {name: "Pedro Rodriguez", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/318601.png",
    position: "Forward", skill_level: 91,
    team_id: team_7.id},
  {name: "Fernando Torres", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/183864.png",
    position: "Forward", skill_level: 86,
    team_id: team_7.id},
  {name: "Pepe Reina", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/175413.png",
    position: "Goalkeeper", skill_level: 87,
    team_id: team_7.id},

  {name: "Alex Wilkinson", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/182620.png",
    position: "Defender", skill_level: 90,
    team_id: team_8.id},
  {name: "Ryan McGowan", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/306410.png",
    position: "Defender", skill_level: 89,
    team_id: team_8.id},
  {name: "Ben Halloran", photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/379164.png",
    position: "Forward", skill_level: 85,
    team_id: team_8.id}
  ])
