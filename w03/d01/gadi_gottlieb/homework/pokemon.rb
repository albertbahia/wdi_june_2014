require 'active_record'

class Pokemon < ActiveRecord::Base
end

  ActiveRecord::Base.establish_connection({
    adapter: 'postgresql',
    database: 'pokemon_db'
    })






# POKEMONS SCHEMA FILE
# ---------------------
# id SERIAL PRIMARY KEY,
# name VARCHAR(255),
# hp INTEGER,
# attack INTEGER,
# defense INTEGER,
# speed INTEGER,
# moves VARCHAR(255),
# image_url VARCHAR(255),
# classification VARCHAR(255),
# species VARCHAR(255),
# height INTEGER,
# happiness INTEGER
# );
