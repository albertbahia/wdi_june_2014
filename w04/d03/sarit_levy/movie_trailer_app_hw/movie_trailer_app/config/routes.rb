Rails.application.routes.draw do

    #get('/') => 'welcome#index', as: 'root'
    root('movies#index')

    resources :movies  #this defines the 7 RESTful routes for the app instead typing get routes for all the views files in our apps

end
