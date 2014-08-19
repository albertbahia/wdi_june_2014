Rails.application.routes.draw do

  root 'application#index'

  resources :grumbles

  put '/grumbles', to: 'grumbles#index'

end
