Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :areas, only: [:create]

  resources :posts, only: [:index, :create]
  
  root "areas#index" 
end
