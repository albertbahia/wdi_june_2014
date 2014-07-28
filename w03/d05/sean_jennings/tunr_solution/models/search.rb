class Search

  def self.search(search_params)

    data = HTTParty.get(URI.escape("https://itunes.apple.com/search?term=#{search_params}"))
    data = JSON.parse(data)["results"]
    return data

  end
end

=begin
  Because itunes sends back data in the form text/js, we had to send that data
  through JSON.parse() in order to turn data into a structure that ruby understands.
  ["results"] was added to get access to the search results.
=end
