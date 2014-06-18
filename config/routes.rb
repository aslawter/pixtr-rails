Rails.application.routes.draw do   
	root to: "galleries#index"

  #get to: "galleries#index"
  resources :galleries, only: [:show, :new, :create, :edit, :update,
  :destroy]  do
  		resources :images, only: [:new, :create, :edit, :update]
   # get "/images/new" => "images#new"
   # post "/images" => "images#create"
  end
  resources :users, only: [:create]
  resource :session, only: [:create]

  get "/sign_up", to: "users#new"
  get "sign_in", to: "sessions#new"
end
