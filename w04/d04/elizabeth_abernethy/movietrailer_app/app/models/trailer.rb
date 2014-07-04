class Trailer < ActiveRecord::Base

  belongs_to :movie

  # Trailers must have a title, embed_url, and movie_id
  validates_presence_of :title, :embed_url, :movie_id

end
