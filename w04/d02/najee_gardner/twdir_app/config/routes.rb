Rails.application.routes.draw do
  get  ""                   => "welcome#index"

  # # tweeds
  # get  "tweeds"             => "tweeds#index"
  # get  "tweeds/new"         => "tweeds#new"
  # post "tweeds/create"      => "tweeds#create"
  # get  "tweeds/:id"         => "tweeds#show"
  # get  "tweeds/:id/edit"    => "tweeds#edit"
  # post "tweeds/:id/update"  => "tweeds#update"
  # post "tweeds/:id/delete"  => "tweeds#delete"

  resources :tweeds

end
