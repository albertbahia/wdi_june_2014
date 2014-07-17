class Movie < ActiveRecord::Base
  has_and_belongs_to_many :actors
  has_many :trailers, dependent: :destroy

  validates :title, :year, :poster_url, :plot, presence: true
  validates :year, numericality: {greater_than: 1890}
  validates :year, numericality: {less_than: Time.now.year + 1}
end
