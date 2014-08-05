Rails.application.routes.draw do
  root 'application#index'
  resources :posts
  get '/show_more', to: 'posts#show_more'
  get '/fetch_one', to: 'posts#fetch_one'
end
