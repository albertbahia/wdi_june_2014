  Rails.application.routes.draw do
  root to: 'application#index'
  resources :grumbles

  put 'grumbles/', to: 'grumbles#index'
end
