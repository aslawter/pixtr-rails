Rails.application.routes.draw do
  root to: "galleries#index"

  resources :galleries, only: [:show, :new, :create, :edit, :update, :destroy]  do
    resources :images, only: [:new, :create]
  end

  resources :images, only: [:show, :edit, :update] do 
    resources :comments, only: [:create]
    resource :like, only: [:create, :destroy]
    
  end

  resources :groups, only: [:new, :create, :index, :show] do
    resource :group_membership, only: [:create, :destroy]
  end 

  resources :tags, only: [:new, :create, :show, :index] 
  resource :session, only: [:create, :destroy]
  resources :users, only: [:create]

  get "/sign_up", to: "users#new"
  get "/sign_in", to: "sessions#new"
end
