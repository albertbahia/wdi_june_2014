class Actor < ActiveRecord::Base
  has_and_belongs_to_many :movies

  validates_presence_of :name, :photo_url
  validates_uniqueness_of :name, :photo_url
end
