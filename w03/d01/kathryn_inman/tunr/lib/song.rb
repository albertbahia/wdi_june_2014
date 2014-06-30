require 'active_record'

class Song < ActiveRecord::Base
  has_many :playlists
end
