class WelcomeController < ApplicationController

  def index
    redirect_to(artists_path)
  end

end
