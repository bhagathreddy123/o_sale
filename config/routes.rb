Rails.application.routes.draw do
  resources :products, only: [:index, :show, :new,:edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "products#index"
  get "/products/new", to: "products#new"
  post "/products", to: "products#create"
  get "/products/:id/edit", to: "products#edit"
  put "/products/:id", to: "products#update"
  get "/products/:id", to: "products#show"
  delete "/products/:id", to: "products#destroy"
end