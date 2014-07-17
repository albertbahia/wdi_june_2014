class Trailer < ActiveRecord::Base
  belongs_to :movies

  validates :embed_url, presence: true
end
