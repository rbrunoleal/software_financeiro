Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'pages#index'
  
  get 'pages/welcome'
  get 'pages/index'
  get 'pages/contact'
  
  resources :contas
  resources :pessoas
  resources :bancos
  resources :movimentos
  devise_for :usuarios
  
  devise_scope :usuario do
    root to: "pages#welcome"
  end
  
  #Rotas JSON(País, Estado, Cidade)
  get 'enderecos/association'
  get 'enderecos/paises'
  get 'enderecos/estados'
  get 'enderecos/cidades'
end
