class WelcomeController < ApplicationController
  def index
    @tractors = Tractor.all
  end
end
