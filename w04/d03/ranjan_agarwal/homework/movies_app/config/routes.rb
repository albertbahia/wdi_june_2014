Rails.application.routes.draw do
    # root to: 'movies#index'
    get '/' => 'welcomes#index', as: 'root'
    get '/movies/search' => "movies#search"
    resources :movies, :actors, :trailers

end
