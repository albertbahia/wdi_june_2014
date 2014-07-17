class Actor < ActiveRecord::Base

  belongs_to :movie


  validates_presence_of :name, :photo_url

end
