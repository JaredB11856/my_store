Rails.application.routes.draw do
  resources :shipping_addresses
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

  #get '/button', to: 'carts#place_order', as: 'button'

  get 'products/:id', to: 'products#show', as: 'product_show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  #get 'cart', to: 'pages#cart'
  get 'checkout', to: 'carts#checkout'
  get 'order_summary', to: 'carts#order_summary'
  
  put 'order_confirmation', to: 'carts#place_order', as: 'button'
  get 'order_confirmation', to: 'carts#order_confirmation'

  get 'user_page', to: 'pages#user_page'

  get 'new_shipping_address', to: 'pages#new_shipping_address'

  get 'cpus', to: 'categories#cpus'
  get 'monitors', to: 'categories#monitors'
  get 'keyboards', to: 'categories#keyboards'

  #get'/userpage/invoice/:id', to: 'pages#user_page', as: 'userpage'

  


  #root to: 'pages#home'  

  
  get'/user_page/invoices', to: 'invoices#index', as: 'invoices'
  #
  #
  get'/user_page/invoices/:id', to: 'invoices#show', as: 'invoice'





  resources :search, only: [:index]
  resources :products
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]  
  root to: "products#index"
 
end
