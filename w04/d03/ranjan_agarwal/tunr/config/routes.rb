Rails.application.routes.draw do
  # get    'artists'            => 'artists#index'
  # get    'artists/new'        => 'artists#new', as: 'new_artist'
  # post   'artists'            => 'artists#create'
  # get    'artists/:id'        => 'artists#show', as: 'artist'
  # get    'artists/:id/edit'   => 'artists#edit', as: 'edit_artist'
  # post   'artists/:id'        => 'artists#update'
  # delete 'artists/:id'        => 'artists#destroy'

  # artists, songs
  resources :artists, :songs


  get    'playlists'                 => 'playlists#index', as: 'playlists'
  get    'playlists/new'             => 'playlists#new', as: 'new_playlist'
  post   'playlists'                 => 'playlists#create'
  get    'playlists/:id'             => 'playlists#show', as: 'playlist'
  post   'playlists/:id/add_song'    => 'playlists#add_song', as: 'add_song_to_playlist'
  post   'playlists/:id/remove_song' => 'playlists#remove_song', as: 'remove_song_from_playlist'

end
