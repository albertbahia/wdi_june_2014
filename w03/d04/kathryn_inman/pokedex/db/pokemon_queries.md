# - All pokemon in the database

Pokemon.all

# - The id of the pokemon named Onix

onix = Pokemon.find_by({name: "Onix"})

# - The name of the pokemon with an id of 89

Pokemon.find(89)

# - Find the pokemon with the name 'Nidoran?'. Change the name of the first pokemon returned to 'Nidoran - male', and the name of the second pokemon returned to 'Nidoran - female'.

nidoran = Pokemon.find_by({name: "Nidoran?"})

nidoran.update({name: "Nidoran - male"})

nidoran.update({name: "Nidoran - female"})


# - Only the hp of the first 35 pokemon

Pokemon.limit(35)

# - All pokemon with a speed less than 25 and attack over 30



# - The 5 pokemon with the highest happiness level.



# - All pokemon ordered by hp from lowest to highest
