Rails.application.routes.draw do
  get 'cart_items/controller'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/products', to: 'products#index'
  # get '/products/:id', to: 'products#show'
  # get '/products/new', to: 'products#new'
  # post '/products', to: 'products#create'
  # get '/products/:id/edit', to: 'products#edit'
  # patch '/products/:id/edit', to: 'products#update'
  # delete '/products/:id', to: 'products#destroy'
  root to: 'pages#home'
  resources :products
  resources :posts
  get '/contact', to: 'pages#contact'
  get '/about', to: 'pages#about'
end
