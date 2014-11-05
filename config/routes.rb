Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :areas, only: [:index, :show, :create] do 
    resources :categories, only: [:create, :index, :show]
  end

  resources :posts, only: [:index, :create, :update, :edit, :destroy]
  
  root "areas#index" 
end
