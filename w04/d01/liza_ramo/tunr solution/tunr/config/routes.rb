Rails.application.routes.draw do
  # artists
  get  'artists'              => 'artists#index'
  get  'artists/new'          => 'artists#new'
  post 'artists'              => 'artists#create'
  get  'artists/:id'          => 'artists#show'
  get  'artists/:id/edit'     => 'artists#edit'
  put  'artists/:id'          => 'artists#update'
  post 'artists/:id/delete'   => 'artists#destroy'

  # songs
  get  'songs'              => 'songs#index'
  get  'songs/new'          => 'songs#new'
  post 'songs'              => 'songs#create'
  get  'songs/:id'          => 'songs#show'
  get  'songs/:id/edit'     => 'songs#edit'
  put  'songs/:id'          => 'songs#update'
  post 'songs/:id/delete'   => 'songs#destroy'

  # playlists
  get  'playlists'                    => 'playlists#index'
  get  'playlists/new'                => 'playlists#new'
  post 'playlists'                    => 'playlists#create'
  get  'playlists/:id'                => 'playlists#show'
  post 'playlists/:id/add_song'      => 'playlists#add_song'
  post 'playlists/:id/remove_song'   => 'playlists#remove_song'
end
