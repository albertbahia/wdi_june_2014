class Pokemon < ActiveRecord::Base

  has_and_belongs_to_many :trainers

end
