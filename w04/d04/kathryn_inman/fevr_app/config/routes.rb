Rails.application.routes.draw do

  get '/' => 'groups#index', as: 'home'

  resources :groups, :teams, :players

end
