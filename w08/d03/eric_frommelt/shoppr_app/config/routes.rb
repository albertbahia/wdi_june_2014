Rails.application.routes.draw do
  root 'application#index'
  get '/products', to: 'products#index'
  get '/search', to: 'products#search'
  get '/filter', to: 'products#filter'
end
