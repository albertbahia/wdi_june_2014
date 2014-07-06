Rails.application.routes.draw do

  resources :logins, only: [:index, :new, :create]
  get '/logins/existing' => 'logins#login', as: 'login'

end
