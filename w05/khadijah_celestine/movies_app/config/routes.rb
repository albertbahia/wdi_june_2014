Rails.application.routes.draw do
root 'movies#index'
  resources :movies do
   resources :trailers
   resources :actors
  end
  get 'search' => 'movies#search', as: 'movie_search_path'
  post 'add_new' => 'movies#add_new', as: 'add_new_movie'

end
