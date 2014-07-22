Rails.application.routes.draw do
  root 'movies#index'
  resources :movies, :trailers, :actors

  get '/search' => "movies#search_results", as: 'search'

end
