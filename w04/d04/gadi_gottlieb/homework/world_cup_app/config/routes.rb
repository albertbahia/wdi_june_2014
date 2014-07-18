Rails.application.routes.draw do
  root("home#index")
  resources :groups, :teams, :players
end
