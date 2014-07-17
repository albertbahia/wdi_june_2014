Rails.application.routes.draw do



  resources :artists, :songs

  # playlists
  get  'playlists'                    => 'playlists#index'
  get  'playlists/new'                => 'playlists#new', as: 'new_playlist'
  post 'playlists'                    => 'playlists#create'
  get  'playlists/:id'                => 'playlists#show', as: 'playlist'
  post 'playlists/:id/add_song'      => 'playlists#add_song', as: 'add_song'
  post 'playlists/:id/remove_song'   => 'playlists#remove_song', as: 'remove_song'
end
