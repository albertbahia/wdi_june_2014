Rails.application.routes.draw do
  # artists
  get  'artists'              => 'artists#index'
  get  'artists/new'          => 'artists#new', as: 'new_artist'
  post 'artists'              => 'artists#create'
  get  'artists/:id'          => 'artists#show', as: 'artist'
  get  'artists/:id/edit'     => 'artists#edit', as: 'edit_artist'
  post  'artists/:id'         => 'artists#update'
  delete 'artists/:id/'       => 'artists#destroy'

  # songs
  get  'songs'              => 'songs#index'
  get  'songs/new'          => 'songs#new', as: 'new_song'
  post 'songs'              => 'songs#create'
  get  'songs/:id'          => 'songs#show', as: 'song'
  get  'songs/:id/edit'     => 'songs#edit', as: 'edit_song'
  post  'songs/:id'         => 'songs#update'
  delete 'songs/:id/'         => 'songs#destroy'

  # playlists
  get  'playlists'                    => 'playlists#index'
  get  'playlists/new'                => 'playlists#new'
  post 'playlists'                    => 'playlists#create'
  get  'playlists/:id'                => 'playlists#show'
  post 'playlists/:id/add_song'      => 'playlists#add_song'
  post 'playlists/:id/remove_song'   => 'playlists#remove_song'
end
