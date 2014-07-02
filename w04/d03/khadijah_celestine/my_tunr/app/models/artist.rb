class Artist < ActiveRecord::Base
  has_many :songs

  validates :name,
            presence: true,
            uniqueness: true,
            length: { maximum: 50}

  validates :nationality,
            presence:true;
end
