Rails.application.routes.draw do
  root to: "galleries#index"

  resources :galleries, only: [:show, :new, :create, :edit, :update, :destroy]  do
    resources :images, only: [:new, :create]
  end

  resources :images, only: [:show, :edit, :update] do 
    resources :comments, only: [:create]
  end

  resources :groups, only: [:new, :create, :index, :show] do
    resources :group_memberships, only: [:create]
  end 

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
end
