class Trailer < ActiveRecord::Base

  belongs_to :movie
  validates_presence_of :title
  validates_presence_of :embed_url
  validates_presence_of :movie_id
end