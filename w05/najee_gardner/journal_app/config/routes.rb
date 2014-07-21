Rails.application.routes.draw do

  get '/login' => 'sessions#new'
  resources :sessions, only: [:create]
  get '/logout' => 'sessions#destroy'

  resources :users

  resources :entries, only: [:index, :new, :create]
end
