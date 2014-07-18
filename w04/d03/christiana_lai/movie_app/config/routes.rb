Rails.application.routes.draw do
  # get('/') => 'movies#index', as: 'root'
  root('movies#index')
  get '/movies/search' => "movies#search"
  resources :movies, :actors, :trailers
end
