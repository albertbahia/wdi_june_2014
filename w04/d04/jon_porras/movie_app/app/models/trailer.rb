class Trailer < ActiveRecord::Base
  belongs_to :movie

  validates :title, :embeded_url, presence: true
end
