Rails.application.routes.draw do
  root to: 'movies#index'  
  resources :movies, :trailers, :actors
  get 'movies/search', to: 'movies#search'
end