Rails.application.routes.draw do

get({"artists"              => "artists#index"})
get  "artists/new"          => "artists#new"
post "artists/"             => "artists#create"
get  "artists/:id"          => "artists#show"
get  "artists/:id/edit"     => "artists#edit"
get  "artists/:index"       => "artists#update"
post "artists/:id/delete"   => "artists#destroy"

get  "songs"             => "songs#index"
get  "songs/new"         => "songs#new"
post "songs/"            => "songs#create"
get  "songs/:id"         => "songs#show"
get  "songs/:id/edit"    => "songs#edit"
get  "songs/:index"      => "songs#update"
post "songs/:id/delete"  => "songs#destroy"

get  "playlists"                   => "playlists#index"
get  "playlists/new"               => "playlists#new"
post "playlists/"                  => "playlists#create"
get  "playlists/:id"               => "playlists#show"
post "/playlists/:id/add_song"     => "playlists#add_song"
post "/playlists/:id/remove_song"  => "playlists#remove_song"
end
