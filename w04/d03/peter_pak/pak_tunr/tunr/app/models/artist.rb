class Artist < ActiveRecord::Base
  has_many :songs, dependent: :destroy

  # artists should have a name
  validates :name, presence: true

  # artists should have a nationality
  validates :nationality, presence: true

  # two artists should not have the same name
  validates(:name, {uniqueness: true})

  # artist name should not exceed 50 characters
  validates :name, length: {maximum: 50}

end
