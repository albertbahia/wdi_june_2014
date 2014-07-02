class HomeController < ApplicationController
  def index
    @paintings = Painting.all
    @artists = Artist.all
  end

end
