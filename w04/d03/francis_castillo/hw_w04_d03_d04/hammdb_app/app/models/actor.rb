class Actor < ActiveRecord::Base
  belongs_to :movie

  validates :name, :photo_url, presence: :true
  
end
