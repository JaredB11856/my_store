Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :items, except: [:show] do
    member do
      get :toggle_status
    end
  end
  get 'items/:id', to: 'items#show', as: 'item_show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'cart', to: 'pages#cart'
  get 'user_page', to: 'pages#user_page'

  get 'cpus', to: 'categories#cpus'
  get 'monitors', to: 'categories#monitors'
  get 'keyboards', to: 'categories#keyboards'




  root to: 'pages#home'  
end
