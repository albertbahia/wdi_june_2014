class WelcomesController < ApplicationController

  def index

    @welcome = OMDB.search(params[:q])
    # @welcome = OMDB.search("paid in full")
  end

end
