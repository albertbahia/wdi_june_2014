Rails.application.routes.draw do
  #tweeds routes:
  get 'tweeds'             => 'tweeds#index'
  get 'tweeds/new'         => 'tweeds#new'
  post 'tweeds'            => 'tweeds#create'
  get 'tweeds/:id'         => 'tweeds#show'
  get 'tweeds/:id/edit'    => 'tweeds#edit'
  post 'tweeds/:id'        => 'tweeds#update'
  post 'tweeds/:id/delete' => 'tweeds#destroy'

  get ''                   => 'welcome#index'
end
