require 'httparty'
require 'active_record'

class OMDB < ActiveRecord::Base

  def self.search(term)
    search_url = URI.escape("http://www.omdbapi.com/?s=#{term}")
    api_response = HTTParty.get(search_url)
    results = JSON.parse(api_response)
    results_array = []

    results["Search"].each do |res|
      results_array << res["imdbID"]
    end
    return results_array
end
  #   @results = []
  #   results_array.each do |res_msg|
  #     search_url_i = URI.escape("http://www.omdbapi.com/?i=#{res_msg}")
  #     api_responses = HTTParty.get(search_url_i)
  #     @results << JSON.parse(api_responses)
  #   end
  # end

end
