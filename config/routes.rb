Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #metodo 'ruta', to 'controlador#accion'
  get 'bienvenida', to: "home#index"

  get 'articles/new', to: "articles#new"
  post 'articles', to: "articles#create"
  get 'articles/:id', to: 'articles#show'
end
