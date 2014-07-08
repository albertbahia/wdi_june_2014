Rails.application.routes.draw do
  root 'movies#index'
  resources :movies
  resources :trailers
  resources :actors
  get 'search' => 'movies#search', as: 'movie_search_path'
  post 'add_new' => 'movies#add_new', as: 'new_movie_by_id'

end
