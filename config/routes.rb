Rails.application.routes.draw do
  resources :purchase_orders
  resources :billing_informations
  resources :shipping_addresses do
  collection {
    post :add
  }
end
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

  get '/button3', to: 'carts#place_order', as: 'button3'
  #put '/button4', to: 'purchase_orders#update', as: 'button4'
  put 'purchase_orders', to: 'purchase_orders#update'


  get 'products/:id', to: 'products#show', as: 'product_show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  #get 'cart', to: 'pages#cart'
  get 'billing', to: 'purchase_orders#billing'
  #post 'billing', to: 'carts#billing'
  #get 'billing', to: 'carts#billing', as:'purchase_orders'
  get 'shipping', to: 'carts#shipping'
  post 'shipping', to: 'carts#shipping'
  #get 'shipping', to: 'shipping_addresses#shipping'

  get 'checkout', to: 'carts#checkout'
  get 'order_summary', to: 'carts#order_summary'
  
  put 'checkout', to: 'carts#submit_shipping', as: 'button2'
  put 'order_confirmation', to: 'carts#place_order', as: 'button'
  get 'order_confirmation', to: 'carts#order_confirmation'

  get 'user_page', to: 'pages#user_page'

  get 'new_shipping_address', to: 'pages#new_shipping_address'

  get 'cpus', to: 'categories#cpus'
  get 'monitors', to: 'categories#monitors'
  get 'keyboards', to: 'categories#keyboards'

  #get'/userpage/invoice/:id', to: 'pages#user_page', as: 'userpage'

  get 'admin', to: 'admins#admin'
  get 'admin/inventory', to: 'admins#admin_inventory'
  get 'admin/orders', to: 'admins#admin_orders'

  


  root to: 'pages#home'  

  
  get'/user_page/invoices', to: 'invoices#index', as: 'invoices'
  #
  #
  get'/user_page/invoices/:id', to: 'invoices#show', as: 'invoice'




  
  resources :search, only: [:index]
  resources :products
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]  
  #root to: "products#index"
 
end
