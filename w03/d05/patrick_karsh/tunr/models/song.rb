class Song < ActiveRecord::Base
  belongs_to :artist
  has_and_belongs_to_many :playlists
  def self.search(search_param)
  	return HTTParty.get(URI.escape("https://itunes.apple.com/search?parameterkeyvalue"))['data']
  end 
end
