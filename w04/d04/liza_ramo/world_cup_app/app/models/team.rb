class Team < ActiveRecord::Base
  has_many :players, dependent: :destroy
  belongs_to :group

  validates_presence_of :country, :flag_url, :manager_name
  validates_uniqueness_of :country

end
