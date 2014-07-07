Rails.application.routes.draw do

# server receives request and points to the Welcome controllers index action
#get '/' => 'welcome#index', as: 'root'
root('movies#index')

resources :movies, :actors, :trailers

end
