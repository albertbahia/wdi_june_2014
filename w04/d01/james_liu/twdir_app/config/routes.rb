Rails.application.routes.draw do
  get "tweeds"             => "tweeds#index"
  get "tweeds/new"         => "tweeds#new"
  post "tweeds"            => "tweeds#create"
  get "tweeds/:id"         => "tweeds#show"
  get "tweeds/:id/edit"    => "tweeds#edit"
  post "tweeds/:id"        => "tweeds#update"
  post "tweeds/:id/delete" => "tweeds#destroy"
end


# Define the Seven Deadly Routes for your app. Each of the routes should be directed towards an action on your controller.

# User Stories

# As a user I want see all of the posted tweeds on the homepage, so that I can browse quickly and easily.
# As a user I want to be able to view an individual tweed, so that I can focus on one entry.
# As a user I want to be able to post a new tweed, so that I can share my thoughts with my friends.
# As a user I want to be able to edit a tweed, so that I can fix a mistake I made.
# As a user I want to be able to delete a tweed, so that future employers will not know what I did that one night.