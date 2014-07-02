Rails.application.routes.draw do
  # welcome
  get ''  =>  'welcome#index', as: 'welcome'

  resources :artists, :paintings
end
