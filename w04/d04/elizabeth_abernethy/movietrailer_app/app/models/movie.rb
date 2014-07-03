class Movie < ActiveRecord::Base

  has_and_belongs_to_many :actors
  has_many :trailers, dependent: :destroy

  validates_presence_of :title, :year
  validate :title, uniqueness: true
  validates :year, numericality: { only_integer: true }

end
