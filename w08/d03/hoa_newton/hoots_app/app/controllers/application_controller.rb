class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @hoot = Hoot.new
    @hoots = Hoot.order(created_at: :desc)
    render layout: 'application', text: ''
  end
end
