class Team < ActiveRecord::Base
  belongs_to :group
  has_many :players, dependent: :destroy

  validates :country, :flag_url, :manager_name, presence: true
  validates :country, uniqueness: true
end
