Rails.application.routes.draw do
  root 'movies#index'
  resources :movies, :trailers, :actors

end
