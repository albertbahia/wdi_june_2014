Rails.application.routes.draw do

  get ''                  => 'welcome#index', as: 'home'
  get 'movies/new/search' => 'movies#search', as: 'movie_search'
  resources :movies, :actors, :trailers

end
