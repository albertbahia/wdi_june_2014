Rails.application.routes.draw do
  root to: 'movies#home'
  get 'movies/search', to: 'movies#search'
  get 'movies/:id', to: 'movies#show'
end
