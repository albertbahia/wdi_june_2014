class Team < ActiveRecord::Base

  belongs_to :group
  has_many   :players

  validates_presence_of :country, :flag_url, :manager_name,

  # :group_id

end
