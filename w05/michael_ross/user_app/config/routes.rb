Rails.application.routes.draw do
  # Users
  # get '/users' => 'users#index'
  # get '/users/new' => 'users#new', as: 'new_user'
  # post '/users' => 'users#create'
  # delete '/users/:id' => 'users#destroy', as: 'user'
  resources :users

  # Sessions
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # Entries
  get '/entries' => 'entries#index'
  get 'entries/new' => 'entries#new', as: 'new_entry'
  post '/entries' => 'entries#create'
end
