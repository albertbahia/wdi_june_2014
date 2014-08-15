class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    render layout: 'application', text: ''
  end

  def fetch_word
    @word = Word.all.sample(1).first
    render json: @word
  end

end
