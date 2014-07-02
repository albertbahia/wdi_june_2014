Rails.application.routes.draw do
  # Home
  get '/'    =>  'home#home', as: "root"

  resources :tweeds
  #Tweeds
  # get 'tweeds'              =>   'tweeds#index'
  # get 'tweeds/new'           =>   'tweeds#new'
  # post 'tweeds'             =>   'tweeds#create'
  # get  'tweeds/:id'         =>   'tweeds#show'
  # get  'tweeds/:id/edit'    =>   'tweeds#edit'
  # post 'tweeds/:id'         =>   'tweeds#update'
  # post 'tweeds/:id/delete'  =>   'tweeds#destroy'

end
