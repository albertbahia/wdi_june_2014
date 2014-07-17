class Actor < ActiveRecord::Base
  belongs_to :movies

  validates_presence_of :name
  validates_uniqueness_of :name
end
