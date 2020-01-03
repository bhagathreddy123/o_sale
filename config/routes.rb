Rails.application.routes.draw do
  # resources :products, only: [:index, :show, :new,:edit, :update, :destroy]
  resources :products
  root to: "products#index"
  get 'users/new', to: 'users#new'
  get '/signup', to: "users#new"
  post "users", to: "users#create"
  get '/signin', to: "sessions#new"
  post "/signin", to: "sessions#create"
  delete "signout", to: "sessions#destroy", as: 'session'
  # get "/products/new", to: "products#new"
  # post "/products", to: "products#create"
  # get "/products/:id/edit", to: "products#edit"
  # put "/products/:id", to: "products#update"
  # get "/products/:id", to: "products#show"
  # delete "/products/:id", to: "products#destroy"
end