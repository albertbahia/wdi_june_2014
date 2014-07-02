Rails.application.routes.draw do

  ## miscellaneous
  get "/"                     => 'welcome#index', as: 'root'
  get "/about"                => 'welcome#about', as: 'about'

  # artists
  get  "artists"              => 'artists#index', as: 'artists'
  get  "artists/new"          => 'artists#new', as: 'new_artist'
  post "artists"              => 'artists#create'
  get  "artists/:id"          => 'artists#show', as: 'artist'
  get  "artists/:id/edit"     => 'artists#edit', as: 'edit_artist'
  post  "artists/:id"         => 'artists#update'
  delete "artists/:id"        => 'artists#destroy'

  # songs
  get  "paintings"              => 'paintings#index', as: 'paintings'
  get  "paintings/new"          => 'paintings#new', as: 'new_painting'
  post "paintings"              => 'paintings#create'
  get  "paintings/:id"          => 'paintings#show', as: 'painting'
  get  "paintings/:id/edit"     => 'paintings#edit', as: 'edit_painting'
  post  "paintings/:id"         => 'paintings#update'
  delete "paintings/:id"        => 'paintings#destroy'
  
end
