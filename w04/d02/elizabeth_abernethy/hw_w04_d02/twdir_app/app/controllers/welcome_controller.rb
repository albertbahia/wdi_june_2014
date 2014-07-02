class WelcomeController < ApplicationController
  def index
    @tweeds = Tweed.all
  end

  def about
  end
end
