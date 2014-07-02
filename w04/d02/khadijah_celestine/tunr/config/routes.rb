Rails.application.routes.draw do
  root to: "songs#index"
  get '/'    => 'artists#index'

  # artists, songs
  resources :artists, :songs

  # playlists
  get  'playlists'                    => 'playlists#index'
  get  'playlists/new'                => 'playlists#new', as: 'new_playlist'
  post 'playlists'                    => 'playlists#create'
  get  'playlists/:id'                => 'playlists#show', as: 'playlist'
  post 'playlists/:id/add_song'       => 'playlists#add_song', as: 'edit_playlist'
  delete 'playlists/:id/remove_song'  => 'playlists#remove_song'
end
