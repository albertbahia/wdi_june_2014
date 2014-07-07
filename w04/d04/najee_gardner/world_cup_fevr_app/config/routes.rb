Rails.application.routes.draw do
  # welcome
  get '/' => 'welcome#index'

  # other routes
  resources :players, :teams, :groups

  # resources :logins, only: [:index, :new, :create]
  # get '/logins/existing' => 'logins#login', as: 'login'
end
