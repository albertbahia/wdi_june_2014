Rails.application.routes.draw do
  get '/' => 'welcomes#index', as: 'root'
  resources :groups, :teams, :players, :welcomes
end
