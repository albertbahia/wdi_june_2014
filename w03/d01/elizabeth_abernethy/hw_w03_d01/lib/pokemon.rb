<<<<<<< HEAD
require 'active_record'

class Pokemon < ActiveRecord::Base
end

ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
  })
=======
class Pokemon < ActiveRecord::Base
end
>>>>>>> d9b22077024d9670774ab444d162143d8798012c
