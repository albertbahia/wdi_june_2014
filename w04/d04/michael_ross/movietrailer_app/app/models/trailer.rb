class Trailer < ActiveRecord::Base
  belongs_to :movie

  validates :title, :embed_url, :movie_id, { presence: true }
end
