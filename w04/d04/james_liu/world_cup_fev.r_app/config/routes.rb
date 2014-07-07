Rails.application.routes.draw do
  root 'players#index'

  resources :groups, :teams, :players, :team_id, :group_id 
end
