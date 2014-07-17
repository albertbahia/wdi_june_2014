Rails.application.routes.draw do

  get '/' => 'movies#index', as: 'home'

  resources :movies, :actors, :trailers

end
