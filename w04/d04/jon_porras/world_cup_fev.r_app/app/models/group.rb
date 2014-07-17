class Group < ActiveRecord::Base
  has_many :teams, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: true
end
