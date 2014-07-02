Rails.application.routes.draw do
  root 'tweeds#index'
  get  'tweeds'            => 'tweeds#index'
  post 'tweeds'            => 'tweeds#create'
  get  'tweeds/new'        => 'tweeds#new'
  get  'tweeds/:id'        => 'tweeds#show'
  get  'tweeds/:id/edit'   => 'tweeds#edit'
  post 'tweeds/:id'        => 'tweeds#update'
  post 'tweeds/:id/delete' => 'tweeds#destroy'
end
