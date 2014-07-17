class Team < ActiveRecord::Base

  has_many :players, dependent: :destroy
  belongs_to :group

  validates :country, :flag_url, :manager_name, presence: true
  validates :country, :manager_name, uniqueness: true

end
