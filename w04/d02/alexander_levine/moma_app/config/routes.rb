Rails.application.routes.draw do
  get "/"                  => 'artists#index', as: 'artists'

  resources :artists, :paintings
end
