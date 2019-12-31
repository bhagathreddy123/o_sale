Rails.application.routes.draw do
  # resources :products, only: [:index, :show, :new,:edit, :update, :destroy]
  resources :products
  root to: "products#index"
  # get "/products/new", to: "products#new"
  # post "/products", to: "products#create"
  # get "/products/:id/edit", to: "products#edit"
  # put "/products/:id", to: "products#update"
  # get "/products/:id", to: "products#show"
  # delete "/products/:id", to: "products#destroy"
end