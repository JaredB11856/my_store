Rails.application.routes.draw do
  resources :items

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  root to: 'pages#home'  
end
