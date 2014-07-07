class Movie < ActiveRecord::Base
  has_many :actors
  has_many :trailers, dependent: :destroy

  validates :title, :year, presence: true
  validates :year, numericality: true
end
