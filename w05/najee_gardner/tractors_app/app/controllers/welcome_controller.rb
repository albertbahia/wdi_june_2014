class WelcomeController < ApplicationController
  def index
    @tractor = Tractor.all.sample
  end
end
