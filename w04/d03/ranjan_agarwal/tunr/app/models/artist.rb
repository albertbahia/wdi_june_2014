class Artist < ActiveRecord::Base
  has_many :songs
  # artists should have a name and nationality
    validates :name, :nationality, presence: true

  # two artists should not have the same name
    validates(:name, uniqueness: true)

  # artist name should not exceed 50 chars
    validates(:name, length: {maximum: 50})

end
