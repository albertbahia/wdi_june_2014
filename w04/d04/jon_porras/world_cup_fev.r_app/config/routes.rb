Rails.application.routes.draw do
  root('teams#index')
  resources :groups, :teams, :players
end
