Rails.application.routes.draw do
  #users
  get '/users'        => 'users#index'
  get '/users/new'    => 'users#new', as: 'new_user'
  post '/users'      => 'users#create'
  delete '/users/:id' => 'users#destroy', as: 'user'

  #sessions
  get "/login" => "sessions#new"
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
