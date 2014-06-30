Rails.application.routes.draw do
  get  "artists"             => "artists#index"
  get  "artists/new"         => "artists#new"
  post "artists"             => "artists#create"
  get  "artists/:id"         => "artists#show"
  get  "artists/:id/edit"    => "artists#edit"
  post "artists/:id"         => "artists#update"
  post "artists/:id/delete"  => "artists#destroy"
end
