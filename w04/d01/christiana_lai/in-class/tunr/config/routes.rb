Rails.application.routes.draw do
  get  "artists"             => "artists#index"
  get  "artists/new"         => "artists#new"
  post "artists"             => "artists#create"
  get  "artists/:id"         => "artists#show"
  get  "artists/:id/edit"    => "artists#edit"
  post "artists/:id"         => "artists#update"
  post "artists/:id/delete"  => "artists#destroy"

  get  "songs"             => "songs#index"
  get  "songs/new"         => "songs#new"
  post "songs"             => "songs#create"
  get  "songs/:id"         => "songs#show"
  get  "songs/:id/edit"    => "songs#edit"
  post "songs/:id"         => "songs#update"
  post "songs/:id/delete"  => "songs#destroy"

  get  "playlists"                 => "playlists#index"
  get  "playlists/new"             => "playlists#new"
  post "playlists"                 => "playlists#create"
  get  "playlists/:id"             => "playlists#show"
  get  "playlists/:id/edit"        => "playlists#edit"
  post "playlists/:id/add_song"    => "playlists#add_song"
  post "playlists/:id/remove_song" => "playlists#remove_song"
  post "playlists/:id/delete"      => "playlists#destroy"

end
