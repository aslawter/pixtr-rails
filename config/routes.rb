Rails.application.routes.draw do
  root to: "galleries#index"

  resources :galleries, only: [:show, :new, :create, :edit, :update, :destroy]  do
    resources :images, only: [:new, :create]
  end

  resources :images, only: [:edit, :update]  
  
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
end
