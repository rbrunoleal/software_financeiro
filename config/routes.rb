Rails.application.routes.draw do
  resources :contas
  resources :unidades
  resources :bancos
  resources :cnaes
  resources :cidades
  resources :estados
  resources :movimentos
  devise_for :usuarios
  resources :cargos
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
