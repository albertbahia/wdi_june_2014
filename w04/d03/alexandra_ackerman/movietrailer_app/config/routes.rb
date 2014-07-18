Rails.application.routes.draw do

  get "/"       => 'welcome#index', as: 'root'

  resources :movies, :actors, :trailers

  post "movies/:id/add_actor"     => "movies#add_actor"
  post "movies/:id/remove_actor"  => "movies#remove_actor"

end
