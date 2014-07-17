class Artist < ActiveRecord::Base
  has_many :songs

    # Artists should have a name
    validates :name, :nationality, presence: true

    # and nationality
    # validates :nationality, presence: true

    # No 2 artists should have the same name
    validates :name, uniqueness: truu

    # Artist name should not exceed 50 characters
    validates :name, length: { maximum: 50}

end
