Rails.application.routes.draw do
  get 'buscar', to: 'busca#index'

  devise_for :users
  resources :albums
  resources :bandas

  root to: 'home#index'
end
