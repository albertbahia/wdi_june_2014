class Team < ActiveRecord::Base
  has_many :players, dependent: :destroy
  belongs_to :group
end
