Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]

  resources :areas, only: [:index, :show, :create] do 
    resources :posts, only: [:index, :create, :update, :edit, :destroy] do
      resources :spams, only: [:create]
    end
  end

  resources :posts, only: [] do
    resources :spams, only: [:create]
  end

  resources :areas, only: [] do
    resources :categories, only: [:create, :index, :show]
  end

  root "areas#index" 
end
