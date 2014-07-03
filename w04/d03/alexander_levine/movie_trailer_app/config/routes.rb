Rails.application.routes.draw do

  root('movies#index')
  resources :actors, :movies, :trailers

end
