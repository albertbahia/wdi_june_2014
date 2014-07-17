Rails.application.routes.draw do
  resources :artists, :paintings

  get 'painting', to: 'paintings#index'

end
