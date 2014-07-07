# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# groups
Group.delete_all
Team.delete_all
Player.delete_all

galactic_empire = {name: "Galactic Empire"}
rebel_alliance ={name: "Rebel Alliance"}

# empire teams
death_star = {country: 'Death Star', flag_url: 'http://stickerish.com/wp-content/uploads/2011/08/GalacticEmpireWhiteSS.png', manager_name: 'Emporer Palpatine'}
coruscant = {country: 'Coruscant', flag_url: 'http://www.wired.com/images_blogs/underwire/2010/12/Coruscant_660.jpg', manager_name: 'Jar Jar Binks'}
kamino = {country: 'Kamino', flag_url: 'http://starwars-wallpapers10.net/wp-content/uploads/images/a7/kamino.jpg', manager_name: 'Taun We'}
geonosis = {country: 'Geonosis', flag_url: 'http://img4.wikia.nocookie.net/__cb20070316041547/starwars/images/e/ea/Geonosis_arena.jpg', manager_name: 'Count Dooku'}

# empire players
empire_players = {
  death_star: [
    {name: 'Darth Vader', photo_url: 'http://img3.wikia.nocookie.net/__cb20081120233924/soulcalibur/images/0/0c/Sc4-darth-vader.jpg', position: 'Forward', skill_level: 90},
    {name: 'Storm Trooper', photo_url: 'http://img2.wikia.nocookie.net/__cb20111205022230/starwars/images/thumb/0/0d/Storm-CHRON.jpg/250px-Storm-CHRON.jpg', position: 'Midfielder', skill_level: 50},
    {name: 'Tie Pilot', photo_url: 'http://www.starwarshelmets.com/momImperialTIEFighterPilot.jpg', position: 'Goalkeeper', skill_level: 70}
  ],
  coruscant:  [
    {name: 'Darth Maul', photo_url: 'http://img3.wikia.nocookie.net/__cb20140209162228/starwars/images/5/50/Darth_Maul_profile.png', position: 'Forward', skill_level: 85},
    {name: 'Darth Sidious', photo_url: 'http://cdn.screenrant.com/wp-content/uploads/Emperor-Palpatine-Darth-Sidious-Star-Wars.jpg', position: 'Midfielder', skill_level: 90},
    {name: 'Red Guard', photo_url: 'http://images3.wikia.nocookie.net/__cb20060314011645/starwars/images/7/74/Guard.png', position: 'Defender', skill_level: 75}
  ],
  kamino: [
    {name: 'Boba Fett', photo_url: 'http://upload.wikimedia.org/wikipedia/en/3/3e/FettbobaJB.png', position: 'Defender', skill_level: 40},
    {name: 'Jango Fett', photo_url: 'http://img2.wikia.nocookie.net/__cb20131105173424/villains/images/f/f3/Original-AOTC-Jango-Fett-001.jpg', position: 'Midfielder', skill_level: 75},
    {name: 'Sifo-Dyas', photo_url: 'http://img2.wikia.nocookie.net/__cb20071205025900/starwars/images/thumb/f/fb/SD-HS.jpg/250px-SD-HS.jpg', position: 'Goalkeeper', skill_level: 60}
  ],
  geonosis: [
    {name: 'Darth Tyrannus', photo_url: 'http://upload.wikimedia.org/wikipedia/en/b/bd/Count_Dooku.png', position: 'Forward', skill_level: 70},
    {name: 'Clone Trooper', photo_url: 'http://static.comicvine.com/uploads/scale_small/0/8015/191921-7024-clone-trooper.jpg', position: 'Midfielder', skill_level: 70},
    {name: 'Nute Gunray', photo_url: 'http://img2.wikia.nocookie.net/__cb20110127015731/starwars/images/d/de/Nute_Gunray_NEGTC2.jpg', position: 'Goalkeeper', skill_level: 20}
  ]
}

# rebel teams

tatooine = {country: 'Tatooine', flag_url: 'http://imgc.allpostersimages.com/images/P-473-488-90/67/6708/JHAA100Z/posters/tatooine-travel-poster.jpg', manager_name: 'Jabba the Hut'}
kashyyyk = {country: 'Kashyyyk', flag_url: 'http://shirtoid.com/wp-content/uploads/2013/09/Kashyyyk-Republic.jpg', manager_name: 'Jabba the Hut'}
endor = {country: 'Forest Moon of Endor', flag_url: 'http://img.ffffound.com/static-data/assets/6/1a4b33e72b4c5c5fcecb0a9a1f7a465a4dfa6bea_m.jpg', manager_name: 'Ewok King'}
cloud_city = {country: 'Cloud City', flag_url: 'https://pbs.twimg.com/media/BCo7jBVCMAAZuuG.jpg', manager_name: 'Lando Calrissian'}

rebel_players = {
  tatooine: [
    {name: 'Luke Skywalker', photo_url: 'http://img1.wikia.nocookie.net/__cb20090319142920/starwars/images/5/57/Luke_Skywalker_SWGTCG.jpg', position: 'Forward', skill_level: 80},
    {name: 'Obi-Wan Kenobi', photo_url: 'http://upload.wikimedia.org/wikipedia/en/3/32/Ben_Kenobi.png', position: 'Midfielder', skill_level: 85},
    {name: 'Lars Owens', photo_url: 'http://img1.wikia.nocookie.net/__cb20120428164235/starwars/images/9/91/OwenLarsHS-SWE.jpg', position: 'Goalkeeper', skill_level: 30}
  ],
  kashyyyk: [
    {name: 'Chewbacca', photo_url: 'http://img4.wikia.nocookie.net/__cb20131107054306/starwars/images/4/49/AbominableChewbacca-SWT.png', position: 'Midfielder', skill_level: 70},
    {name: 'Yoda', photo_url: 'http://img1.wikia.nocookie.net/__cb20131106213953/starwars/images/d/d6/Yoda_SWSB.png', position: 'Defender', skill_level: 100},
    {name: 'Clone Commander', photo_url: 'http://img3.wikia.nocookie.net/__cb20070501190841/starwars/images/e/e3/CC-1.JPG', position: 'Goalkeeper', skill_level: 50}
  ],
  endor: [
    {name: 'R2-D2', photo_url: 'http://img2.wikia.nocookie.net/__cb20090524204255/starwars/images/1/1a/R2d2.jpg', position: 'Defender', skill_level: 60},
    {name: 'Ewok', photo_url: 'http://gamedayr.com/wp-content/uploads/2013/11/joakim-noah-ewok1.jpg', position: 'Goalkeeper', skill_level: 50},
    {name: 'C-3PO', photo_url: 'http://img3.wikia.nocookie.net/__cb20131005124036/starwars/images/5/51/C-3PO_EP3.png', position: 'Forward', skill_level: 30}
  ],
  cloud_city: [
    {name: 'Han Solo', photo_url: 'http://upload.wikimedia.org/wikipedia/en/f/f4/HanSolo.jpg', position: 'Forward', skill_level: 75},
    {name: 'Admiral Ackbar', photo_url: 'http://d1mxyp5ceukbya.cloudfront.net/images/admiral-ackbar-ole-miss-bigger.jpg', position: 'Midfielder', skill_level: 40},
    {name: 'Leia Skywalker', photo_url: 'http://img1.wikia.nocookie.net/__cb20100317190224/starwars/images/d/db/Leia_Organa.jpg', position: 'Goalkeeper', skill_level: 65}
  ]
}

empire = Group.create!(galactic_empire)
rebel = Group.create!(rebel_alliance)

death_star_team = Team.create!(death_star)
coruscant_team = Team.create!(coruscant)
kamino_team = Team.create!(kamino)
geonosis_team = Team.create!(geonosis)

tatooine_team = Team.create!(tatooine)
kashyyyk_team = Team.create!(kashyyyk)
endor_team = Team.create!(endor)
cloud_city_team = Team.create!(cloud_city)

empire.teams << death_star_team << coruscant_team << kamino_team << geonosis_team
rebel.teams << tatooine_team << kashyyyk_team << endor_team << cloud_city_team

death_star_team.players = empire_players[:death_star].map { |player_hash| Player.create!(player_hash) }
coruscant_team.players = empire_players[:coruscant].map { |player_hash| Player.create!(player_hash) }
kamino_team.players = empire_players[:kamino].map { |player_hash| Player.create!(player_hash) }
geonosis_team.players = empire_players[:geonosis].map { |player_hash| Player.create!(player_hash) }

tatooine_team.players = rebel_players[:tatooine].map { |player_hash| Player.create!(player_hash) }
kashyyyk_team.players = rebel_players[:kashyyyk].map { |player_hash| Player.create!(player_hash) }
endor_team.players = rebel_players[:endor].map { |player_hash| Player.create!(player_hash) }
cloud_city_team.players = rebel_players[:cloud_city].map { |player_hash| Player.create!(player_hash) }
