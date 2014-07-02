class Song < ActiveRecord::Base
  belongs_to :artist
  has_and_belongs_to_many :playlists

  def self.search(search_param)
    @api_call = JSON.parse(HTTParty.get("https://itunes.apple.com/search?term=#{search_param}"))['results']
  end

end
