class PlayerTeam < ActiveRecord::Base
  belongs_to :team
  belongs_to :players
end