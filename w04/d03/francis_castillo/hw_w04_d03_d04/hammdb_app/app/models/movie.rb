class Movie < ActiveRecord::Base
  has_many :actors, dependent: :destroy
  has_many :trailers, dependent: :destroy
end
