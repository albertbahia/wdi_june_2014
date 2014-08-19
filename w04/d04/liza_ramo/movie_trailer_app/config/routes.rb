Rails.application.routes.draw do

  get('/' => 'welcome#index', as: 'root')
  get('/movies/search' => 'movies#search')
  resources :movies, :actors, :trailers
  
end
