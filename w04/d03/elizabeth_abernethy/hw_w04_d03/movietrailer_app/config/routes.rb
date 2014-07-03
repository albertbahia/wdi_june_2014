Rails.application.routes.draw do

  get "/"          => 'welcome#index', as: 'root'
  get '/about'     => 'welcome#about', as: 'about'

  resources :movies, :actors, :trailers

end
