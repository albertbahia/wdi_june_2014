Rails.application.routes.draw do
  root('movies#index')
  resources :movies, :actors, :trailers

  get '/search' => 'movies#search'

end
