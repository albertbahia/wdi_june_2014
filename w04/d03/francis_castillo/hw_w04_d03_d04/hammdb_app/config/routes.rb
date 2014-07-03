Rails.application.routes.draw do
  get '/' => 'welcome#index', as: 'root'
  
  resources :movies
  resources :actors
  resources :trailers

end
