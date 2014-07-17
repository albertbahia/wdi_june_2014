class Movie < ActiveRecord::Base
  has_many :actors
  has_one :trailer

  validates :title, :year, :plot, :poster_url, presence: true
  validates :year, numericality: { greater_than_or_equal_to: 1800 }
  validates :year, numericality: { only_integer: true }
end
