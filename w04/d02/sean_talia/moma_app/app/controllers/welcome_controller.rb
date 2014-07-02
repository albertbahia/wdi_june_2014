class WelcomeController < ApplicationController
  def index
    @artists = Artist.all
  end

  def about
  end
end
