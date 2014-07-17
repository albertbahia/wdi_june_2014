class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)

    if @artist.save
        redirect_to(artist_path(@artist))
    else
        render(:new) # pulls up the new.html.erb page.
    end              # If name is filled out, but one item missing,
  end                # the if/else statement, wont delete our name
                     # and will reroute us to the same new page
                     # and prompt us to insert all data that needs filling.
  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.update(artist_params)
      redirect_to(artist_path(@artist))
    else
      render(:edit)
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to(artists_path)
  end

  private
  def artist_params
    params.require(:artist).permit(:name, :photo_url, :nationality)
  end

end
