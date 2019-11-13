Rails.application.routes.draw do
  resources :add_order_to_shipping_addresses
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}, controllers: { :sessions => "custom_sessions" }  

  resources :orders
  resources :search, only: [:index]  
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]  
  resources :products, except: [:show, :edit] 
  
  #get 'filters', to: 'pages#filter_menu' 

  #get '/button3', to: 'carts#place_order', as: 'button3'
  get 'button1', to: 'pages#filter_menu', as: "button1"  


  put 'orders', to: 'orders#update'
  get 'products/:id', to: 'products#show', as: 'product_show'

  get 'billing', to: 'orders#billing'
  get 'checkout', to: 'carts#checkout'

  get 'cpus', to: 'pages#cpus'
  get 'keyboards', to: 'pages#keyboards'
  get 'monitors', to: 'pages#monitors'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  get 'user_page', to: 'pages#user_page'

  get 'admin', to: 'admins#admin'
  get 'admin/inventory', to: 'admins#admin_inventory'
  get 'admin/orders', to: 'admins#admin_orders'

  root to: 'pages#home'

  
  
 
end
