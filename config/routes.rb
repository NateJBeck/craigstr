Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :areas, only: [:create, :index]

  resources :posts, only: [:index, :create, :update, :edit, :destroy]
  resources :categories, only: [:create]
  
  root "areas#index" 
end
