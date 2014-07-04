class Actor < ActiveRecord::Base

  has_and_belongs_to_many :movies

  # Actors must have a name and photo url
  validates_presence_of :name, :photo_url

end
