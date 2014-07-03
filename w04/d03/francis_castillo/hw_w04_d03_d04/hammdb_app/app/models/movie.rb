class Movie < ActiveRecord::Base
  has_many :actors
  has_many :trailers, dependent: :destroy

  validates :title, :year, :poster_url, :plot, presence: true
  validates :year, numericality: {integer_only: true}
  
end
