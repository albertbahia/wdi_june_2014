Rails.application.routes do
# get '/' => 'welcomes#index', as: 'root'
  resources :groups
  resources :teams
  resources :players

end
