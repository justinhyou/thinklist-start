Rails.application.routes.draw do
  
  resources :listings, except: [:index]
  resources :categories, only: [:show]

  root 'listings#index'
end
