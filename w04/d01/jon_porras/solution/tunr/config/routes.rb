Rails.application.routes.draw do
  # artists
  get  "artists"              => 'artists#index'
  get  "artists/new"          => 'artists#new'
  post "artists"              => 'artists#create'
  get  "artists/:id"          => 'artists#show'
  get  "artists/:id/edit"     => 'artists#edit'
  put  "artists/:id"          => 'artists#update'
  post "artists/:id/delete"   => 'artists#destroy'

  # songs
  get  "songs"              => 'songs#index'
  get  "songs/new"          => 'songs#new'
  post "songs"              => 'songs#create'
  get  "songs/:id"          => 'songs#show'
  get  "songs/:id/edit"     => 'songs#edit'
  put  "songs/:id"          => 'songs#update'
  post "songs/:id/delete"   => 'songs#destroy'

  # playlists
  get  "playlists"                    => 'playlists#index'
  get  "playlists/new"                => 'playlists#new'
  post "playlists"                    => 'playlists#create'
  get  "playlists/:id"                => 'playlists#show'
  post "playlists/:id/add_song"      => 'playlists#add_song'
  post "playlists/:id/remove_song"   => 'playlists#remove_song'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
