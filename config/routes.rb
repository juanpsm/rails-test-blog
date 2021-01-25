Rails.application.routes.draw do
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #metodo 'ruta', to 'controlador#accion'
  get 'bienvenida', to: "home#index"

  root to: "home#index"

  # get 'articles', to: "articles#index"
  # get 'articles/new', to: "articles#new", as: :new_articles # esto se resume como new_article_path, sin la s, cambiarlo en el html
  # post 'articles', to: "articles#create"
  # get 'articles/:id', to: 'articles#show'
  # get 'articles/:id/edit', to: 'articles#edit'
  # patch 'articles/:id', to: 'articles#update', as: :article
  # delete 'articles/:id', to: 'articles#destroy'
  # get 'articles/user/:user_id', to: "articles#from_author"
  # todo esto se resume en
  resources :articles do
    get 'user/:user_id', to: "articles#from_author", on: :collection
  end
  
  devise_for :users
  get 'profile', to: "users#edit"
  resources :users, only:[:update]
end
