require 'active_record'

class Song < ActiveRecord::Base
  has_and_belongs_to_many :playlist
end
