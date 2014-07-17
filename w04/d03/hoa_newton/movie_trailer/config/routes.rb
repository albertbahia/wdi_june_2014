Rails.application.routes.draw do

	get 'movies/search', to: 'movies#search'
	post 'movies/results', to: 'movies#results'
  root to: 'movies#index'  
  resources :movies, :trailers, :actors
end
