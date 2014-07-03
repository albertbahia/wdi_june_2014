class Omdb
  # returns a hash with movie key that has the hash of movie info and an actor
  # key that has an array of actor names
  def self.search(query)
    api_response = JSON.parse(HTTParty.get(URI.escape("http://www.omdbapi.com/?s=#{query}")))['Search']

    results = []

    api_response.each do |movie|
      results << JSON.parse(HTTParty.get(URI.escape("http://www.omdbapi.com/?i=#{movie['imdbID']}")))
    end

    results
  end

  def self.get_movie_actor_hash(movie_name, movie_year=nil)
    movie_info = get_movie_info(movie_name, movie_year)
    movie_hash = {title: movie_info['Title'], year: movie_info['Year'].to_i, plot: movie_info['Plot']}
    if movie_info['Poster'] == "N/A"
      movie_hash[:poster_url] = "http://www.homeprojecthq.com/upload_images/No_Image_Available.gif"
    else
      movie_hash[:poster_url] = movie_info['Poster']
    end

    movie_actor_hash = {}
    movie_actor_hash[:actors] = []
    movie_info['Actors'].split(', ').each do |actor_name|
      movie_actor_hash[:actors] << actor_name
    end

    movie_actor_hash[:movie] = movie_hash
    movie_actor_hash
  end

  # def self.get_poster_url(movie_name, movie_year)
  #   search_title_year(movie_name, movie_year)['Poster']
  # end

  # def self.get_year(movie_name)
  #   search_title(movie_name)['Year']
  # end

  # def self.search_title(query)
  #   JSON.parse(HTTParty.get(URI.escape("http://www.omdbapi.com/?t=#{query}")))
  # end

  def self.get_movie_info(title, year=nil)
    if year == nil
      JSON.parse(HTTParty.get(URI.escape("http://www.omdbapi.com/?t=#{title}")))
    else
      JSON.parse(HTTParty.get(URI.escape("http://www.omdbapi.com/?t=#{title}&y=#{year}")))
    end
  end
end
