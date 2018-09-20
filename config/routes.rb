Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}  
  resources :purchase_orders
  resources :search, only: [:index]  
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]  
  resources :products, except: [:show, :edit] 
  
  put 'purchase_orders', to: 'purchase_orders#update'
  get 'products/:id', to: 'products#show', as: 'product_show'

  get 'billing', to: 'purchase_orders#billing'
  get 'checkout', to: 'carts#checkout'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  get 'user_page', to: 'pages#user_page'

  get 'admin', to: 'admins#admin'
  get 'admin/inventory', to: 'admins#admin_inventory'
  get 'admin/orders', to: 'admins#admin_orders'

  root to: 'pages#home'

 
end
