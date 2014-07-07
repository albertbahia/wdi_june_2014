class Actor < ActiveRecord::Base
  belongs_to :movie

  validates_presence_of :name
  validates_presence_of :photo_url

end
