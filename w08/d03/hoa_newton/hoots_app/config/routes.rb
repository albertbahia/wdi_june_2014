Rails.application.routes.draw do
  root to: 'application#index'
  resources :hoots, except: [:index, :show, :new]
end
