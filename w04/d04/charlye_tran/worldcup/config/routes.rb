Rails.application.routes.draw do

  get '/'  => 'welcome#index', as: 'root'
  resources :groups, :teams, :players

end
