class Movie < ActiveRecord::Base
  has_and_belongs_to_many :actors
  has_many :trailers

  validates_presence_of :title, :poster_url, :plot, :year
  validates_uniqueness_of :title, :poster_url
  validates :year, numericality: { only_integer: true }
end
