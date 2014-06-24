All pokemon in the database
    Pokeman.all

- The id of the pokemon named Onix
    onix = Pokemon.find_by({:name => 'Onix'})
    onix.id

- The name of the pokemon with an id of 89
    poke = Pokemon.find_by({:id => 89})
    poke.name

- Find the pokemon with the name 'Nidoran?'. Change the name of the first pokemon returned to 'Nidoran - male', and the name of the second pokemon returned to 'Nidoran - female'.
    Nidoran = Pokemon.where({:name => 'Nidoran?'})
    Nidoran.update(29, :name => 'Nidoran - male')
    Nidoran.update(32, :name => 'Nidoran - female')

- Only the hp of the first 35 pokemon
    Pokemon.take(34).select(:hp)
-
  All pokemon with a speed less than 25 and attack over 30

- The 5 pokemon with the highest happiness level.

- All pokemon ordered by hp from lowest to highest
