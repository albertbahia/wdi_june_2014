class Team < ActiveRecord::Base
  belongs_to :group
  has_many :players, dependent: :destroy
  validates_presence_of :country, :flag_url, :manager
end
