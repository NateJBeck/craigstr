Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :areas, only: [:create, :index]

  resources :categories, only: [:create]

  resources :posts, only: [:index, :create, :edit, :update, :destroy] do
    resources :spams, only: [:create]
  end
  
  root "areas#index" 
end
