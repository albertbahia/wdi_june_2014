class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    movie_data = Omdb.get_movie_actor_hash(@movie.title, @movie.year)

    if @movie.poster_url = "" || @movie.plot == ""
      @movie.poster_url = movie_data[:movie][:poster_url] if @movie.poster_url == ""
      @movie.plot = movie_data[:movie][:plot] if @movie.plot == ""
    end

    if params[:movie][:poster_url] == 'N/A'
      @movie.poster_url = "http://www.homeprojecthq.com/upload_images/No_Image_Available.gif"
    end

    if @movie.save
      movie_data[:actors].each do |actor_name|
        if actor = Actor.find_by(name: actor_name)
          @movie.actors << actor
        else
          @movie.actors << Actor.create(name: actor_name, photo_url: "http://www.homeprojecthq.com/upload_images/No_Image_Available.gif")
        end
      end

      redirect_to(movie_path(@movie))
    else
      render :new
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(movie_params)
      redirect_to(movie_path(@movie))
    else
      render :edit
    end
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.actors.each do |actor|
      actor.destroy if actor.movies.count == 1
    end
    movie.destroy
    redirect_to movies_path
  end

  def search
    @results = Omdb.search(params[:query])
    @results.each do |movie_hash|
      if movie_hash['Poster'] == 'N/A'
        movie_hash['Poster'] = "http://www.homeprojecthq.com/upload_images/No_Image_Available.gif"
      end
    end
    @movie = Movie.new
  end

  def movie_params
    params.require(:movie).permit(:title, :year, :poster_url, :plot)
  end
end
