class WelcomeController < ApplicationController

  def index
    @random_tractor = Tractor.all.sample
  end

end
