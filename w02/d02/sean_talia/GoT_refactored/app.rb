require_relative('lib/beast.rb')
require_relative('lib/human.rb')
require_relative('lib/army.rb')
require_relative('lib/battle.rb')


jon = Human.new('Jon Snow', 'Watch', 40)
ghost = Beast.new('Ghost', 'Watch', 20)
summer = Beast.new('Summer', 'Watch', 25)
lady = Beast.new('Lady', 'Watch', 20)
ned = Human.new('Ned', 'Stark', 30)
robb = Human.new('Robb', 'Stark', 35)
arya = Human.new('Arya', 'Stark', 10)
sansa = Human.new('Sansa', 'Stark', 5)
bran = Human.new('Bran', 'Stark', 15)

north = Army.new('The North Army', [jon, ghost, summer, lady, ned, robb, arya, sansa, bran])

cersei = Human.new('Cersei', 'Lannister', 2)
jaime = Human.new('Jaime', 'Lannister', 45)
tyrian = Human.new('Tyrian', 'Lannister', 15)
tywin = Human.new('Tywin', 'Lannister', 35)
tommen = Human.new('Tommen', 'Lannister', 15)
joffrey = Human.new('Joffrey', 'Lannister', 2)
hound = Beast.new('The Hound', 'Who-Knows', 55)
mountain = Beast.new('Mountain', 'Clegane', 60)

south = Army.new('The South Army', [cersei, jaime, tyrian, tywin, tommen, joffrey, hound, mountain])

battle(north, south)
