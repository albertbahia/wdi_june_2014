Rails.application.routes.draw do
  # artists
  get  "artists"             => "artists#index"
  get  "artists/new"         => "artists#new", as: 'new_artist'
  get  "artists/search"      => "artists#search"
  post "artists"             => "artists#create"
  get  "artists/:id"         => "artists#show", as: 'artist'
  get  "artists/:id/edit"    => "artists#edit",  as: 'edit_artist'
  post "artists/:id"         => "artists#update"
  delete "artists/:id"       => "artists#destroy", as: 'delete_artist'

  # songs
  get  "songs"             => "songs#index"
  get  "songs/new"         => "songs#new", as: 'new_song'
  get  "songs/search"      => "songs#search"
  post "songs"             => "songs#create"
  get  "songs/:id"         => "songs#show", as: 'song'
  get  "songs/:id/edit"    => "songs#edit", as: 'edit_song'
  post "songs/:id"         => "songs#update"
  delete "songs/:id"       => "songs#destroy", as: 'delete_song'

  # playlists
  get  "playlists"          => "playlists#index"
  get  "playlists/new"      =>  "playlists#new", as: 'new_playlist'
  post "playlists"          => "playlists#create"
  get  "playlists/:id"      => "playlists#show", as: 'playlist'
  post "playlists/:id/add_song"  => "playlists#add_song", as: 'playlist_add_song'
  post "playlists/:id/remove_song" => "playlists#remove_song", as: 'playlist_remove_song'

end
