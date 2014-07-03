Rails.application.routes.draw do

  get '/' => 'welcome#index', as: 'root'

  resources :movies, :actors, :trailers

end
