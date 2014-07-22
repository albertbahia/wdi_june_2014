class Movie < ActiveRecord::Base
  has_many :trailers, dependent: :destroy
  has_many :actors

  validates :title, :year, { presence: true }
  validates :title, uniqueness: true
  validates :year, numericality: { only_integer: true, greater_than: 1850 }

end
