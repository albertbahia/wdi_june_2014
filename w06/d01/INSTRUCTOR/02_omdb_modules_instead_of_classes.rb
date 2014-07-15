module OMDB
  API_URL = "http://www.omdbapi.com"

  def self.search_by_title(movie_info)
    search_params = movie_info.split.join('+')
    api_root = "#{API_URL}/?s="
    JSON.parse(HTTParty.get(api_root + search_params))['Search']
  end

  def self.search_by_id(movie_id)
    search_params = movie_id.split.join('+')
    api_root = "#{API_URL}/?="
    result = JSON.parse(HTTParty.get(api_root + search_params))
    movie_params = {title: result['Title'], year: result['Year'], poster_url: result['Poster'], plot: result['Plot']}
    return [ movie_params , result['Actors'].split(',')]
  end
end


module TVDB
  def self.search_by_title(query)
    # do some stuff here....
  end
end


# The modules serve as namespaces for our methods.
OMDB.search_by_title("Batman")
TVDB.search_by_title("Batman")
