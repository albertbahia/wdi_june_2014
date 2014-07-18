Rails.application.routes.draw do
  
  get '/'                         => 'welcome#index', as: 'root'


  get  "movies/search"			  => "movies#search"
  resources :actors, :movies, :trailers

  post "trailers/:id/add_trailer" => "trailers#add_trailer"
  post "movies/:id/add_actor"     => "movies#add_actor"
  post "movies/:id/remove_actor"  => "movies#remove_actor"

end
