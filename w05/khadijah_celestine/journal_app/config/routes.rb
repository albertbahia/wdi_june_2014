Rails.application.routes.draw do
	#resources :user, only: [:index, :new, :create, :destroy]

  get '/users' => 'users#index'
  get '/users/new' => 'users#new', as: 'new_user'
  post '/users' => 'users#create'
  delete '/users/:id' => 'users#destroy', as: 'user'

  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

	get '/entries' => 'entries#index'
	get '/entries/new' => 'entries#new'
	post '/entries' => 'entries#create'
end
