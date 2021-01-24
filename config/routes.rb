Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #metodo 'ruta', to 'controlador#accion'
  get 'bienvenida', to: "home#index"

  root to: "home#index"

  get 'articles', to: "articles#index"
  get 'articles/new', to: "articles#new", as: :new_articles
  post 'articles', to: "articles#create"
  get 'articles/:id', to: 'articles#show'
  get 'articles/:id/edit', to: 'articles#edit'
  patch 'articles/:id', to: 'articles#update', as: :article
  delete 'articles/:id', to: 'articles#destroy'

  devise_for :users
end
