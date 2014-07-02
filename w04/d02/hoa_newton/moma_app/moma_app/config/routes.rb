Rails.application.routes.draw do
  
  #home
  get "/"  => 'welcome#index', as: 'root'

  #routes
  resources :artists, :paintings

end
