Rails.application.routes.draw do

  get '' => 'welcome#index', as: 'home'
  resources :movies, :actors, :trailers

end
