class Trailer < ActiveRecord::Base
  belongs_to :movie

  validates_presence_of :title
  validates_uniqueness_of :title

end
