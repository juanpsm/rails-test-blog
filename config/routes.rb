Rails.application.routes.draw do

  resources :users, only: [:new, :create]
  
  #metodo 'ruta', to: 'controlador#acción'
  get 'bien', to: 'home#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
end
