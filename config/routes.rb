Rails.application.routes.draw do
  resources :contas
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :pessoas
  resources :bancos
  resources :movimentos
  devise_for :usuarios
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
