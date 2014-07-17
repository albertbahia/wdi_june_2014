Rails.application.routes.draw do

  root('users#index')
  resources :users


  #Users' Routes:

  get '/users'      =>   'users#index'
  get '/users/new'  =>   'users#new'
  post '/users'     =>   'users#create'
  delete '/users/:id' => 'users#destroy'



#Sessions' Routes

  get  '/login'    =>  'sessions#index'
  post '/sessions' =>  'sessions#create'
  get  '/logout'   =>  'sessions#destroy'
end
