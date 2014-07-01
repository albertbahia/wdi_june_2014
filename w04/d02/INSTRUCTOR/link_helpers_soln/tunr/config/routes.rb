Rails.application.routes.draw do
  # miscellaneous
  get "/"                     => 'welcome#index', as: 'root'
  get "/about"                => 'welcome#about', as: 'about'

  # artists
  get  "artists"              => 'artists#index', as: 'artists'
  get  "artists/new"          => 'artists#new', as: 'new_artist'
  post "artists"              => 'artists#create'
  get  "artists/:id"          => 'artists#show', as: 'artist'
  get  "artists/:id/edit"     => 'artists#edit', as: 'edit_artist'
  post  "artists/:id"         => 'artists#update'
  post "artists/:id/delete"   => 'artists#destroy', as: 'delete_artist'

  # songs
  get  "songs"              => 'songs#index', as: 'songs'
  get  "songs/new"          => 'songs#new', as: 'new_song'
  post "songs"              => 'songs#create'
  get  "songs/:id"          => 'songs#show', as: 'song'
  get  "songs/:id/edit"     => 'songs#edit', as: 'edit_song'
  post  "songs/:id"         => 'songs#update'
  post "songs/:id/delete"   => 'songs#destroy', as: 'delete_song'

  # playlists
  get  "playlists"                    => 'playlists#index', as: 'playlists'
  get  "playlists/new"                => 'playlists#new', as: 'new_playlist'
  post "playlists"                    => 'playlists#create'
  get  "playlists/:id"                => 'playlists#show', as: 'playlist'
  post "playlists/:id/add_song"       => 'playlists#add_song', as: 'add_song_to_playlist'
  post "playlists/:id/remove_song"    => 'playlists#remove_song', as: 'remove_song_from_playlist'
end
