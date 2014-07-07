class OMDB

  def self.search(search_term)

    results = JSON.parse(HTTParty.get(URI.escape("http://www.omdbapi.com/?s=#{search_term}")))["Search"]

    results_id_array = results.map do |r|
      r["imdbID"]
    end

    movie_info = []
    results_id_array.each do |id|
      movie_info << JSON.parse(HTTParty.get(URI.escape("http://www.omdbapi.com/?i=#{id}")))
    end
    return movie_info
  end
end


    # search_url = URI.escape("http://www.omdbapi.com/?s=#{search_term}")
    # api_response = HTTParty.get(search_url)
    # results = JSON.parse(api_response)["Search"]

      # Title, year, poster url, plot

      # get the IMDBid, go deeper into the nested array
      # results.each do
      # make an api call
      # store the result in results_array
    # for each result, query the API, get response back
    # The response is the actual movie hash
    # Put these multiple responses into an array
