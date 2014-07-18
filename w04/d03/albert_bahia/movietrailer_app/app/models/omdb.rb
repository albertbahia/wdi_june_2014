# require 'pry'
# require 'httparty'

class OMDB

  def self.search(q)
    url = URI.escape("http://www.omdbapi.com/?s=#{q}")
    inital_search_results = HTTParty.get(url)

    refined_search_results = JSON.parse(inital_search_results)

    results_array = refined_search_results["Search"]

    id_array = []

    results_array.each do |result|
      id_array.push(result["imdbID"])
    end

    refined_array = []

    id_array.each do |id|
      url = URI.escape("http://www.omdbapi.com/?i=#{id}")
      second_search_results = HTTParty.get(url)
      refined_second_search = JSON.parse(second_search_results)
      refined_array.push(refined_second_search)
    end

    return refined_array
  end

end

# puts "Enter a movie:"
# query = gets.chomp
# puts ""
# puts "Results:"
# OMDB.search(query).each do |result|
#   puts result
# end
# puts ""
