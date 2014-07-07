Rails.application.routes.draw do
  # artists
  get  'artists'              => 'artists#index'
  get  'artists/new'          => 'artists#new', as: 'new_artist'
  post 'artists'              => 'artists#create'
  get  'artists/:id'          => 'artists#show', as: 'artist'  #this is a path helper that will add a GET path for it as can be seen in rake routes
  get  'artists/:id/edit'     => 'artists#edit', as: 'edit_artist'
  post 'artists/:id'          => 'artists#update'
  post 'artists/:id/delete'   => 'artists#destroy'

  # songs
  get  'songs'              => 'songs#index'
  get  'songs/new'          => 'songs#new'
  post 'songs'              => 'songs#create'
  get  'songs/:id'          => 'songs#show'
  get  'songs/:id/edit'     => 'songs#edit'
  post  'songs/:id'          => 'songs#update'
  post 'songs/:id/delete'   => 'songs#destroy'

  # playlists
  get  'playlists'                    => 'playlists#index'
  get  'playlists/new'                => 'playlists#new'
  post 'playlists'                    => 'playlists#create'
  get  'playlists/:id'                => 'playlists#show'
  post 'playlists/:id/add_song'      => 'playlists#add_song'
  post 'playlists/:id/remove_song'   => 'playlists#remove_song'
end
