Rails.application.routes.draw do
  # get '/' => 'welcome#index', as: 'root'
  root('movies#index')

  resources :movies 
  resources :actors 
  resources :trailers 
end
  