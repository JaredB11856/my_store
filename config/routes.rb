Rails.application.routes.draw do
  resources :items, except: [:show] do
    member do
      get :toggle_status
    end
  end
  get 'items/:id', to: 'items#show', as: 'item_show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  root to: 'pages#home'  
end
