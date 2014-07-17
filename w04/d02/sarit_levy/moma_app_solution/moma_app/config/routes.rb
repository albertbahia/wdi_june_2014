Rails.application.routes.draw do
  root to: 'artists#index'  
  resources :artists, :paintings
end
