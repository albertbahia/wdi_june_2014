Rails.application.routes.draw do
  #tweeds routes:
  resources :tweeds

  get ''                   => 'welcome#index'
end
