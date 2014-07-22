require 'active_record'
require 'httparty'
require 'pry'

class Song < ActiveRecord::Base
  belongs_to :artist
  has_and_belongs_to_many :playlists

  def self.search(search_param)
    api_results = HTTParty.get(URI.escape("https://itunes.apple.com/search?term=#{search_param}"))
    results_hash = JSON.parse(api_results)
    results_hash['results']
  end

end

binding.pry
