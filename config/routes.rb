Rails.application.routes.draw do
  resources :credit_cards
  get 'order_items/create'
  get 'order_items/update'
  get 'order_items/destroy'
  get 'carts/show'
  get 'products/index'

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :products, except: [:show] do
    member do
      get :toggle_status
    end
  end
  get 'products/:id', to: 'products#show', as: 'product_show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  #get 'cart', to: 'pages#cart'
  get 'checkout', to: 'carts#checkout'
  get 'order_confirmation', to: 'carts#order_confirmation'
  get 'user_page', to: 'pages#user_page'
  get 'user_page/invoice', to: 'pages#invoice'

  get 'cpus', to: 'categories#cpus'
  get 'monitors', to: 'categories#monitors'
  get 'keyboards', to: 'categories#keyboards'

  


  #root to: 'pages#home'  

  resources :search, only: [:index]
  resources :products
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]  
  root to: "products#index"
 
end
