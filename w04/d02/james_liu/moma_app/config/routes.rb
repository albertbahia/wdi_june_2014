Rails.application.routes.draw do
  
  get "/"                     => 'welcome#index', as: 'root'

  resources :artists, :paintings
end
