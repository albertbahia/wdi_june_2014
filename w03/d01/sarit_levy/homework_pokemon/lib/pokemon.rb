
ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
  })


class Pokemon < ActiveRecord::Base



end
