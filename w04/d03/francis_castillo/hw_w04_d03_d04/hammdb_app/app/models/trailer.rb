class Trailer < ActiveRecord::Base
  belongs_to :movie

  validates :title, presence: true
  validates :embed_url, presence: true

end
