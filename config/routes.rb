Rails.application.routes.draw do
  get 'pages/welcome'
  get 'pages/index'
  get 'pages/contact'
  resources :contas
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :pessoas
  resources :bancos
  resources :movimentos
  devise_for :usuarios
  root 'pages#index'
  
  devise_scope :usuario do
    root to: "pages#welcome"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
