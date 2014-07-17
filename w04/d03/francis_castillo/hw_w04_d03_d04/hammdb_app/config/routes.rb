Rails.application.routes.draw do
  get '/' => 'welcomes#index', as: 'root'

  resources :movies
  resources :actors
  resources :trailers

end
