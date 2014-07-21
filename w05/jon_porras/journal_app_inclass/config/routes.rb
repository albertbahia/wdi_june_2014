Rails.application.routes.draw do
  root "users#new"
  resources :users
  resources :entries

  # Sessions
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
