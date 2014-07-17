# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


group_a = {
  name: "A",
  teams: [
    {
      country: "Brazil",
      flag_url: "http://upload.wikimedia.org/wikipedia/en/thumb/0/05/Flag_of_Brazil.svg/1000px-Flag_of_Brazil.svg.png",
      manager_name: "Luiz Felipe Scolari",
      players: [
        {
        name: "David Luiz",
        photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/271043.png",
        position: "Defender",
        skill_level: 90
        },
        {
        name: "Bastian Fernandinho",
        photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/208016.png",
        position: "Midfielder",
        skill_level: 87
        },
        {
        name: "Neymar",
        photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/314197.png",
        position: "Forward",
        skill_level: 89
        },
      ]
    },
    {
      country: "Croatia",
      flag_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Flag_of_Croatia.svg/1200px-Flag_of_Croatia.svg.png",
      manager_name: "Niko Kovac",
      players: [
        {
        name: "Stlipe Petikosa",
        photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/179048.png",
        position: "Goalkeeper",
        skill_level: 84
        },
        {
        name: "Marcelo Brozovic",
        photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/380000.png",
        position: "Midfielder",
        skill_level: 86
        },
        {
        name: "Nikica Jelavic",
        photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/316117.png",
        position: "Forward",
        skill_level: 87
        },
      ]
    },
    {
      country: "Mexico",
      flag_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Flag_of_Mexico.svg/1280px-Flag_of_Mexico.svg.png",
      manager_name: "Miguel Herrera",
      players: [
        {
        name: "Jose Corona",
        photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/195231.png",
        position: "Goalkeeper",
        skill_level: 86
        },
        {
        name: "Marco Fabian",
        photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/319311.png",
        position: "Midfielder",
        skill_level: 86
        },
        {
        name: "Javier Hernandez",
        photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/228599.png",
        position: "Forward",
        skill_level: 89
        },
      ]
    },
    {
      country: "Cameroon",
      flag_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Flag_of_Cameroon.svg/600px-Flag_of_Cameroon.svg.png",
      manager_name: "Volke Finke",
      players: [
        {
        name: "Loic Feudjou",
        photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/355859.png",
        position: "Goalkeeper",
        skill_level: 80
        },
        {
        name: "Danny Nounkeu",
        photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/200259.png",
        position: "Defender",
        skill_level: 85
        },
        {
        name: "Fabrice Olinga",
        photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/367396.png",
        position: "Forward",
        skill_level: 86
        },
      ]
    }
  ]
}


group_g = {
  name: "G",
  teams: [
    {
      country: "U.S.A.",
      flag_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/Flag_of_the_United_States_%28Pantone%29.svg/1235px-Flag_of_the_United_States_%28Pantone%29.svg.png",
      manager_name: "Jurgen Klinsmann",
      players: [
        {
        name: "DaMarcus Beasley",
        photo_url: "http://img.fifa.com/images/fwc/2014/players/sqr-5/175498.png",
        position: "Defender",
        skill_level: 80
        },
        {
        name: "Clint Dempsey",
        photo_url: "http://img.fifa.com/images/fwc/2014/players/sqr-5/207851.png",
        position: "Forward",
        skill_level: 90
        },
        {
        name: "Tim Howard",
        photo_url: "http://img.fifa.com/images/fwc/2014/players/sqr-5/178420.png",
        position: "Goalkeeper",
        skill_level: 93
        }
      ]
    },
    {
      country: "Germany",
      flag_url: "http://upload.wikimedia.org/wikipedia/en/b/ba/Flag_of_Germany.svg",
      manager_name: "Joachim Löw",
      players: [
        {
        name: "Manuel Neuer",
        photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/228912.png",
        position: "Goalkeeper",
        skill_level: 87
        },
        {
        name: "Bastian Schweinsteiger",
        photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/196752.png",
        position: "Midfielder",
        skill_level: 88
        },
        {
        name: "Mats Hummels",
        photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/311150.png",
        position: "Defender",
        skill_level: 85
        },
      ]
    },
    {
      country: "Portugal",
      flag_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Flag_of_Portugal.svg/225px-Flag_of_Portugal.svg.png",
      manager_name: "Fernando Santos",
      players: [
        {
        name: "Cristiano Ronaldo",
        photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/201200.png",
        position: "Forward",
        skill_level: 97
        },
        {
        name: "Raul Meireles",
        photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/210214.png",
        position: "Midfielder",
        skill_level: 86
        },
        {
        name: "Eder",
        photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/359436.png",
        position: "Forward",
        skill_level: 88
        },
      ]
    },
    {
      country: "Ghana",
      flag_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Flag_of_Ghana.svg/225px-Flag_of_Ghana.svg.png",
      manager_name: "James Kwesi Appiah",
      players: [
        {
        name: "Stephen Adams",
        photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/323574.png",
        position: "Goalkeeper",
        skill_level: 84
        },
        {
        name: "Sulley Muntari",
        photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/183000.png",
        position: "Midfielder",
        skill_level: 83
        },
        {
        name: "Joanathan Mensah",
        photo_url: "http://img.fifa.com/images/fwc/2014/players/prt-3/306634.png",
        position: "Defender",
        skill_level: 85
        },
      ]
    }
  ]
}

groups = [group_a, group_g]

groups.each do |group|
  current_group = Group.create!({name: group[:name]})
  group[:teams].each do |team|
    current_team = Team.create!({
      country: team[:country],
      flag_url: team[:flag_url],
      manager_name: team[:manager_name]
      })
      current_group.teams << current_team
      team[:players].each do |player|
        current_player = Player.create!(player)
        current_team.players << current_player
      end
  end
end
