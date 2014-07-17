# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# require 'pry'



groups = [

  {
    name: 'a',
    teams: [
      {
        country: 'brazil',
        flag_url: 'http://www.zeehd.com/wp-content/uploads/2014/06/brazil-flag-hd-wallpaper-2.jpg',
        manager_name: 'luiz felipe scolari',
        players: [
          {
            name: 'neymar',
            photo_url: 'http://a.espncdn.com/combiner/i/?img=/soccernet/i/players/130x180/132948.jpg&w=130&h=180&scale=crop&site=espnfc',
            position: 'forward',
            skill_level: 96
          },

          {
            name: 'hulk',
            photo_url: 'http://a.espncdn.com/combiner/i/?img=/soccernet/i/players/130x180/124068.jpg&w=130&h=180&scale=crop&site=espnfc',
            position: 'forward',
            skill_level: 93
          },

          {
            name: 'oscar',
            photo_url: 'http://a.espncdn.com/combiner/i/?img=/soccernet/i/players/130x180/173667.jpg&w=130&h=180&scale=crop&site=espnfc',
            position: 'midfielder',
            skill_level: 93
          }
        ]
      },

      {
        country: 'mexico',
        flag_url: 'http://a.espncdn.com/combiner/i?img=/i/teamlogos/soccer/500-dark/203.png&amp;w=126&amp;site=espnfc',
        manager_name: 'miguel herrera',
        players: [
          {
            name: 'giovani dos santos',
            photo_url: 'http://a.espncdn.com/combiner/i/?img=/soccernet/i/players/130x180/93495.jpg&w=130&h=180&scale=crop&site=espnfc',
            position: 'forward',
            skill_level: 87
          },

          {
            name: 'javier hernandez',
            photo_url: 'http://a.espncdn.com/combiner/i/?img=/soccernet/i/players/130x180/146419.jpg&w=130&h=180&scale=crop&site=espnfc',
            position: 'forward',
            skill_level: 93
          },

          {
            name: 'rafael marquez',
            photo_url: 'http://a.espncdn.com/combiner/i/?img=/soccernet/i/players/130x180/11771.jpg&w=130&h=180&scale=crop&site=espnfc',
            position: 'defender',
            skill_level: 84
          }
        ]
      },

      {
        country: 'croatia',
        flag_url: 'http://a.espncdn.com/combiner/i?img=/i/teamlogos/soccer/500-dark/477.png&w=126&site=espnfc',
        manager_name: 'niko kovac',
        players: [
          {
            name: 'eduardo',
            photo_url: 'http://a.espncdn.com/combiner/i/?img=/soccernet/i/players/130x180/38178.jpg&w=130&h=180&scale=crop&site=espnfc',
            position: 'forward',
            skill_level: 91
          },

          {
            name: 'luka modric',
            photo_url: 'http://a.espncdn.com/combiner/i/?img=/soccernet/i/players/130x180/76762.jpg&w=130&h=180&scale=crop&site=espnfc',
            position: 'midfielder',
            skill_level: 93
          },

          {
            name: 'danijel pranjic',
            photo_url: 'http://a.espncdn.com/combiner/i/?img=/soccernet/i/players/130x180/36003.jpg&w=130&h=180&scale=crop&site=espnfc',
            position: 'midfielder',
            skill_level: 89
          }
        ]
      },

      {
        country: 'cameroon',
        flag_url: 'http://a.espncdn.com/combiner/i?img=/i/teamlogos/soccer/500-dark/656.png&w=126&site=espnfc',
        manager_name: 'volker finke',
        players: [
          {
            name: 'samuel eto',
            photo_url: 'http://a.espncdn.com/combiner/i/?img=/soccernet/i/players/130x180/11718.jpg&w=130&h=180&scale=crop&site=espnfc',
            position: 'forward',
            skill_level: 96
          },

          {
            name: 'alex song',
            photo_url: 'http://a.espncdn.com/combiner/i/?img=/soccernet/i/players/130x180/43447.jpg&w=130&h=180&scale=crop&site=espnfc',
            position: 'midfielder',
            skill_level: 93
          },

          {
            name: 'benoit assou-ekotto',
            photo_url: 'http://a.espncdn.com/combiner/i/?img=/soccernet/i/players/130x180/41320.jpg&w=130&h=180&scale=crop&site=espnfc',
            position: 'defender',
            skill_level: 88
          }
        ]
      }
    ]
  },

  {
    name: 'b',
    teams: [
      {
        country: 'netherlands',
        flag_url: 'http://a.espncdn.com/combiner/i?img=/i/teamlogos/soccer/500-dark/449.png&w=126&site=espnfc',
        manager_name: 'louis van gaal',
        players: [
          {
            name: 'robin van persie',
            photo_url: 'http://a.espncdn.com/combiner/i/?img=/soccernet/i/players/130x180/18858.jpg&w=130&h=180&scale=crop&site=espnfc',
            position: 'forward',
            skill_level: 96
          },

          {
            name: 'wesley sneijder',
            photo_url: 'http://a.espncdn.com/combiner/i/?img=/soccernet/i/players/130x180/28235.jpg&w=130&h=180&scale=crop&site=espnfc',
            position: 'midfielder',
            skill_level: 95
          },

          {
            name: 'ron vlaar',
            photo_url: 'http://a.espncdn.com/combiner/i/?img=/soccernet/i/players/130x180/127433.jpg&w=130&h=180&scale=crop&site=espnfc',
            position: 'defender',
            skill_level: 87
          }
        ]
      },

      {
        country: 'chile',
        flag_url: 'http://a.espncdn.com/combiner/i?img=/i/teamlogos/soccer/500-dark/207.png&w=126&site=espnfc',
        manager_name: 'jorge sampaoli',
        players: [
          {
            name: 'alexis sanchez',
            photo_url: 'http://a.espncdn.com/combiner/i/?img=/soccernet/i/players/130x180/92055.jpg&w=130&h=180&scale=crop&site=espnfc',
            position: 'forward',
            skill_level: 96
          },

          {
            name: 'arturo vidal',
            photo_url: 'http://a.espncdn.com/combiner/i/?img=/soccernet/i/players/130x180/102198.jpg&w=130&h=180&scale=crop&site=espnfc',
            position: 'midfielder',
            skill_level: 90
          },

          {
            name: 'gonzalo jara',
            photo_url: 'http://a.espncdn.com/combiner/i/?img=/soccernet/i/players/130x180/147339.jpg&w=130&h=180&scale=crop&site=espnfc',
            position: 'defender',
            skill_level: 91
          }
        ]
      },

      {
        country: 'spain',
        flag_url: 'http://a.espncdn.com/combiner/i?img=/i/teamlogos/soccer/500-dark/164.png&w=126&site=espnfc',
        manager_name: 'vincente del bosque',
        players: [
          {
            name: 'david villa',
            photo_url: 'http://a.espncdn.com/combiner/i/?img=/soccernet/i/players/130x180/28600.jpg&w=130&h=180&scale=crop&site=espnfc',
            position: 'forward',
            skill_level: 96
          },

          {
            name: 'andres iniesta',
            photo_url: 'http://a.espncdn.com/combiner/i/?img=/soccernet/i/players/130x180/17566.jpg&w=130&h=180&scale=crop&site=espnfc',
            position: 'midfielder',
            skill_level: 98
          },

          {
            name: 'javi martinez',
            photo_url: 'http://a.espncdn.com/combiner/i/?img=/soccernet/i/players/130x180/85298.jpg&w=130&h=180&scale=crop&site=espnfc',
            position: 'defender',
            skill_level: 93
          }
        ]
      },

      {
        country: 'australia',
        flag_url: 'http://a.espncdn.com/combiner/i?img=/i/teamlogos/soccer/500-dark/628.png&w=126&site=espnfc',
        manager_name: 'ange postecoglou',
        players: [
          {
            name: 'tim cahill',
            photo_url: 'http://a.espncdn.com/combiner/i/?img=/soccernet/i/players/130x180/5105.jpg&w=130&h=180&scale=crop&site=espnfc',
            position: 'forward',
            skill_level: 95
          },

          {
            name: 'massimo luongo',
            photo_url: 'http://a.espncdn.com/combiner/i/?img=/soccernet/i/players/130x180/165266.jpg&w=130&h=180&scale=crop&site=espnfc',
            position: 'midfielder',
            skill_level: 93
          },

          {
            name: 'mile jedinak',
            photo_url: 'http://a.espncdn.com/combiner/i/?img=/soccernet/i/players/130x180/85979.jpg&w=130&h=180&scale=crop&site=espnfc',
            position: 'midfielder',
            skill_level: 89
          }
        ]
      }
    ]
  }
]

groups.each do |group|
  cur_group = Group.create({
    name: group[:name]
  })

  group[:teams].each do |team|
    cur_team = Team.create({
      country: team[:country],
      flag_url: team[:flag_url],
      manager_name: team[:manager_name],
      group_id: cur_group.id
    })

    team[:players].each do |player|
      Player.create({
        name: player[:name],
        photo_url: player[:photo_url],
        position: player[:position],
        skill_level: player[:skill_level],
        team_id: cur_team.id
      })
    end
  end
end
