group_one = Group.create(name: "Group 1")
group_two = Group.create(name: "Group 2")

group_one.teams.push(
angola = Team.create(country: "Angola", photo_url: "http://www.mapsofworld.com/images/world-countries-flags/angola-flag.gif", manager_name: "Sir Neville Mariner"),
germany = Team.create(country: "Germany", photo_url: "http://i260.photobucket.com/albums/ii1/gircrazy468/Flags/german_flag.jpg", manager_name: "Anselm Kiefer"),
brasil = Team.create(country: "Brasil", photo_url: "http://www.mapsofworld.com/images/world-countries-flags/brazil-flag.gif", manager_name: "Adrian Rodriguez"),
canadia = Team.create(country: "Canadia", photo_url: "http://img2.wikia.nocookie.net/__cb20140303010834/elderscrolls/images/d/d4/Canadian_Flag.jpg", manager_name: "Mr. Clean")
)

group_two.teams.push(
sweeden = Team.create(country: "Sweeden", photo_url: "http://www.nordiskal.com/img/magnet/Sweden%20Flag%20magnet.jpg", manager_name: "Georgie Fruit"),
monaco = Team.create(country: "Monaco", photo_url: "http://www.mapsofworld.com/images/world-countries-flags/monaco-flag.gif", manager_name: "Nemo"),
liechtenstein = Team.create(country: "Liechtenstein", photo_url: "hhttp://www.mapsofworld.com/images/world-countries-flags/liechtenstein-flag.gif", manager_name: "Mr. Algernon"),
mongolia = Team.create(country: "Mongolia", photo_url: "http://www.flags-and-anthems.com/media/flags/flagge-mongolei.gif", manager_name: "Yonathan")
)

angola.players.push(
Player.create(name: "Landu Mavanga", photo_url: "http://placekitten.com/200/300", position: "Forward", skill: 89),
Player.create(name: "Signori Antonio", photo_url: "http://placekitten.com/200/300", position: "Defender", skill: 89),
Player.create(name: "Elber Delgado", photo_url: "http://placekitten.com/200/300", position: "Midfielder", skill: 89)
)


germany.players.push(
Player.create(name: "Casper", photo_url: "http://placekitten.com/200/300", position: "Defender", skill: 89),
Player.create(name: "Klaus", photo_url: "http://placekitten.com/200/300", position: "Midfielder", skill: 89),
Player.create(name: "Janik", photo_url: "http://placekitten.com/200/300", position: "Forward", skill: 89)
)

brasil.players.push(
Player.create(name: "Harry", photo_url: "http://placekitten.com/200/300", position: "Midfielder", skill: 89),
Player.create(name: "Jorge", photo_url: "http://placekitten.com/200/300", position: "Goalkeeper", skill: 89),
Player.create(name: "Noot noot", photo_url: "http://placekitten.com/200/300", position: "Forward", skill: 89)
)

canadia.players.push(
Player.create(name: "Henry", photo_url: "http://placekitten.com/200/300", position: "Forward", skill: 89),
Player.create(name: "Louis", photo_url: "http://placekitten.com/200/300", position: "Midfielder", skill: 89),
Player.create(name: "Lewis", photo_url: "http://placekitten.com/200/300", position: "Forward", skill: 89)
)

sweeden.players.push(
Player.create(name: "Nils", photo_url: "http://placekitten.com/200/300", position: "Midfielder", skill: 89),
Player.create(name: "Nina", photo_url: "http://placekitten.com/200/300", position: "Goalkeeper", skill: 89),
Player.create(name: "Plotz", photo_url: "http://placekitten.com/200/300", position: "Forward", skill: 89)
)

monaco.players.push(
Player.create(name: "Morry", photo_url: "http://placekitten.com/200/300", position: "Goalkeeper", skill: 89),
Player.create(name: "Dude", photo_url: "http://placekitten.com/200/300", position: "Forward", skill: 89),
Player.create(name: "Bubba", photo_url: "http://placekitten.com/200/300", position: "Defender", skill: 89)
)

liechtenstein.players.push(
Player.create(name: "Snoop", photo_url: "http://placekitten.com/200/300", position: "Defender", skill: 89),
Player.create(name: "Dawg", photo_url: "http://placekitten.com/200/300", position: "Midfielder", skill: 89),
Player.create(name: "Asuka", photo_url: "http://placekitten.com/200/300", position: "Forward", skill: 89)
)

mongolia.players.push(
Player.create(name: "Puella", photo_url: "http://placekitten.com/200/300", position: "Goalkeeper", skill: 89),
Player.create(name: "Madoka", photo_url: "http://placekitten.com/200/300", position: "Defender", skill: 89),
Player.create(name: "Magica", photo_url: "http://placekitten.com/200/300", position: "Forward", skill: 89)
)
