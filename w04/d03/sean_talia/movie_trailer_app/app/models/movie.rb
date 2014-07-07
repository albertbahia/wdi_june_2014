class Movie < ActiveRecord::Base
  has_many :actors, dependent: :destroy
  has_many :trailers, dependent: :destroy

  validates_presence_of :title, :year
  validates :year, numericality: {only_integer: true}

end
