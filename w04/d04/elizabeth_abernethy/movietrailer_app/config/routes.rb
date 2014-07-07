Rails.application.routes.draw do

  get '/'             => 'welcome#index', as: 'root'
  get '/movies/search' => 'movies#search', as: 'search'

  resources :movies, :actors, :trailers

end
