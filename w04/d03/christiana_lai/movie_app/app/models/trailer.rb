class Trailer < ActiveRecord::Base
  belongs_to :movie
  
  validates_presence_of :title, :embed_url, :movie_id
  validates_uniqueness_of :title
end
