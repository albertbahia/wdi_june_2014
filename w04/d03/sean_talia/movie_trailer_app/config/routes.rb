Rails.application.routes.draw do
  root('welcome#index')
  #about('welcome#about')

  get '/movies/search' => "movies#search", as: 'search_movie'

  resources :movies, :actors, :trailers

end
