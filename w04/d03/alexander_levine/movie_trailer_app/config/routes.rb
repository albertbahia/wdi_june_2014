Rails.application.routes.draw do

  root('movies#index')

  get 'movies/search'  =>  'movies#search'
  post 'movies/results'  => 'movies#results'
  resources :actors, :movies, :trailers

end
