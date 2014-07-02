#All pokemon in the database
Pokemon.all

#The id of the pokemon named Onix
Pokemon.find_by(name: 'Onix').id

#The name of the pokemon with an id of 89
Pokemon.find_by(id: 89).name

#Find the pokemon with the name 'Nidoran?'. Change the name of the first pokemon returned to 'Nidoran - male', and the name of the second pokemon returned to 'Nidoran - female'.

#Only the hp of the first 35 pokemon
Limit in active record

#All pokemon with a speed less than 25 and attack over 30
less than double where
### will return an array of all pokemons (which are active record objects that you can call other ac record methods on) can use an each to just get the name
Pokemon.where("speed < '25' AND attack > '30' ")

### should just get us the names?
Pokemon.where("speed < '25' AND attack > '30' ") & name
Pokemon.where("speed < '25' AND attack > '30' "). map do |poke|
  poke.name
end



#The 5 pokemon with the highest happiness level.
order by ac

#All pokemon ordered by hp from lowest to highest
order by
select pokemon.name
