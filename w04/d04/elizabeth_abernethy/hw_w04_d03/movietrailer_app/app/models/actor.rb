class Actor < ActiveRecord::Base
  belongs_to :movies

  # Actors must have a name
  validates(:name, { presence: true })

  # Actors' names must not be more than 50 characters
  validates(:name, { length: { maximum: 50 } })

end
