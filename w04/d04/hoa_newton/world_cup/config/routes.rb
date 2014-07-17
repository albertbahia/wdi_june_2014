Rails.application.routes.draw do
  root 'welcome#index'
  resources :players, :teams, :groups

end
