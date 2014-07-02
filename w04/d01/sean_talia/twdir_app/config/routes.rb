Rails.application.routes.draw do

#home
  get '/'                   => 'tweeds#index'

#tweeds
  get 'tweeds'              => 'tweeds#index'
  get 'tweeds/new'          => 'tweeds#new'
  post 'tweeds'             => 'tweeds#create'
  get 'tweeds/:id'          => 'tweeds#show'
  get 'tweeds/:id/edit'     => 'tweeds#edit'
  post 'tweeds/:id'         => 'tweeds#update'
  get 'tweeds/:id/delete'  => 'tweeds#destroy'

end
