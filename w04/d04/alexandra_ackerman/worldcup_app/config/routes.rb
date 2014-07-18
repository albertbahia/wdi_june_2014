Rails.application.routes.draw do

  get '/' => 'welcome#index', as:'root'

  resources :players, :groups, :teams

end
