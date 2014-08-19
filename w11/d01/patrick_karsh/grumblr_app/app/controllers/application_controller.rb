class ApplicationController < ActionController::Base
  def index
    render layout: 'application', text: ''
  end
end
