class Trailer < ActiveRecord::Base
  belongs_to :movie
  validates :title, :embed_url, presence: true
end
