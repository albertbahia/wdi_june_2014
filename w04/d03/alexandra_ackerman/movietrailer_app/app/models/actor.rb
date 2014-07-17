class Actor < ActiveRecord::Base
  belongs_to :movie

  validates :name, presence: true
  validates :photo_url, presence: true

end
