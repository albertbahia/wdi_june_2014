class Trailer < ActiveRecord::Base
  belongs_to :movie, dependent: :destroy

  validates :title, :embed_url, :movie_id, { presence: true }
end
