class Trailer < ActiveRecord::Base
  has_and_belongs_to_many :actors
  belongs_to :movie

  validates :title, :embed_url, presence: true
  validates :embed_url, inclusion: {in: %w(iframe http)}
end
