Rails.application.routes.draw do

  get  "tweeds"             => "tweeds#index", as: 'tweeds'
  get  "tweeds/new"         => "tweeds#new", as: 'new_tweed'
  post "tweeds"             => "tweeds#create"
  get  "tweeds/:id"         => "tweeds#show", as: 'tweed'
  get  "tweeds/:id/edit"    => "tweeds#edit", as: 'edit_tweed'
  post "tweeds/:id"         => "tweeds#update"
  post "tweeds/:id/delete"  => "tweeds#destroy"

end
