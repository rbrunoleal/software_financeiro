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
  
  get 'contas_json', to: 'contas#conta_json_formatado'
  
  devise_scope :usuario do
    root to: "pages#welcome"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
