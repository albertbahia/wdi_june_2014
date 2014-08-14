Rails.application.routes.draw do
  root to: 'application#index'
  get '/fetch_word' => 'application#fetch_word'
end
