class Movie < ActiveRecord::Base
  has_many :actors, dependent: :destroy
  has_many :trailers, dependent: :destroy

  validates :title, :year, presence: true
  validates :title, uniqueness: true
  validates :year, numericality: { only_integer: true }
end
