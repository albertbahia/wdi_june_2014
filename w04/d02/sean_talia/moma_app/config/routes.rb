Rails.application.routes.draw do
  # miscellaneous
  get "/"                     => 'welcome#index', as: 'root'
  get "/about"                => 'welcome#about', as: 'about'

  resources :paintings
  resources :artists

  # Extra Artist Routes
  # post "artists/:id/add_painting"     => "artists#add_painting", as: 'add_painting_to_artist'
  # post "artists/:id/remove_painting"  => "artists#remove_painting", as: 'remove_painting_from_painting'

end
