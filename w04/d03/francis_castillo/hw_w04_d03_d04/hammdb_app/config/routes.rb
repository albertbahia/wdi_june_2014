Rails.application.routes.draw do
  get '/' => 'movies#index', as: 'root'

  resources :movies
  resources :actors
  resources :trailers

end
