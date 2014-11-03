Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]

  root "users#index"
  
  # get "/:username", to: "users#index", as: "user"
end
