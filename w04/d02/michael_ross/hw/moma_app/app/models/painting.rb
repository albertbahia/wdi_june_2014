class Painting < ActiveRecord::Base
  belongs_to :artist, dependent: :destroy
end
