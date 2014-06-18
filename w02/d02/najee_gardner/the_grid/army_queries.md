## Army Queries

#### army_spec.rb

Is there a reason that you instantiate new objects more than once even though they are being instantiated with the same values? (There is a "let" call at the top that instantiates the north members. Why not use the original instantiations for tests you do later on?) 

###### The Army describe
	let(:north_members) do
    [
      Human.new('Jon Snow', 'Watch', 50),
      Human.new('Ned', 'Stark', 50),
      Human.new('Robb', 'Stark', 50),
      Beast.new('Ghost', 'Watch', 50)
    ]
    
###### #livng_members describe

	jon = Human.new('Jon Snow', 'Watch', 50)
    ghost = Beast.new('Ghost', 'Watch', 50)
    ned = Human.new('Ned', 'Stark', 50)
    robb = Human.new('Robb', 'Stark', 50)

    ned.take_damage(ned.hp + 9000)
    robb.take_damage(robb.hp + 9000)

    dying_north = Army.new('The Dying North', [jon, ned, robb, ghost])
    
###### #clear_bodies describe

	jon = Human.new('Jon Snow', 'Watch', 50)
    ghost = Beast.new('Ghost', 'Watch', 50)
    ned = Human.new('Ned', 'Stark', 50)
    robb = Human.new('Robb', 'Stark', 50)

    ned.take_damage(ned.hp + 9000)
    robb.take_damage(robb.hp + 9000)

    dying_north = Army.new('The Dying North', [jon, ned, robb, ghost])
    
