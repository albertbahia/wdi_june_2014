Rails.application.routes.draw do
  root 'movies#index'
  resources :movies, :trailers, :actors

  post "movies/search" => "movies#search"

end
