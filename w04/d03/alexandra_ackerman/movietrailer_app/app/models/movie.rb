class Movie < ActiveRecord::Base
  has_many :actors
  has_many :trailers

  validates :title, presence: true
  validates :year, numericality: { less_than: 2015 }
  validates :poster_url, presence: true
  validates :plot, presence: true
end
