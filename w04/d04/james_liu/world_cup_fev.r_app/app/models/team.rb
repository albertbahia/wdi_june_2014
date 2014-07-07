class Team < ActiveRecord::Base
  belongs_to :group
  has_many :players
  validates_presence_of :country, :flag_url, :manager
  validates_uniqueness_of :country, :flag_url, :manager
end