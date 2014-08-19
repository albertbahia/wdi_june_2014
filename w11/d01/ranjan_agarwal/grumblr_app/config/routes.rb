Rails.application.routes.draw do
  root 'application#index'
  resources :grumblrs
  put 'grumblrs/', to: 'grumblrs#index'
end
