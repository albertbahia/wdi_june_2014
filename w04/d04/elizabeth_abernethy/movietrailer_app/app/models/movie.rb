class Movie < ActiveRecord::Base

  has_and_belongs_to_many :actors
  has_many :trailers, dependent: :destroy

  # Movies must have a title and a year
  # Movies must have a unique title
  # Movies must have a numerical / integer year
  validates_presence_of :title, :year
  validate :title, uniqueness: true
  validates :year, numericality: { only_integer: true }

end
