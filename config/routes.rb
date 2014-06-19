Rails.application.routes.draw do
	root to: "galleries#index"

  #get to: "galleries#index"
  resources :galleries, only: [:show, :new, :create, :edit, :update, :destroy]  do
  		resources :images, only: [:new, :create, :edit, :update]
   # get "/images/new" => "images#new"
   # post "/images" => "images#create"
  end

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
end
