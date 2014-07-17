class OMDB

  def self.search_by_title(movie_info)
    search_params = movie_info.split.join('+')
    api_root = 'http://www.omdbapi.com/?s='
    JSON.parse(HTTParty.get(api_root + search_params))['Search']
  end

  def self.search_by_id(movie_id)
    search_params = movie_id.split.join('+')
    api_root = 'http://www.omdbapi.com/?i='
    result = JSON.parse(HTTParty.get(api_root + search_params))
    movie_params = {title: result['Title'], year: result['Year'], poster_url: result['Poster'], plot: result['Plot']}
    return [ movie_params , result['Actors'].split(',')]
  end
end