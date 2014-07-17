class Actor < ActiveRecord::Base
  belongs_to :movies

  validates :name, :photo_url, presence: true
end
