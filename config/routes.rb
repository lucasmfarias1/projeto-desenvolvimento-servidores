Rails.application.routes.draw do
  get 'buscar', to: 'busca#index'

  get 'explorar', to: 'home#explorar'

  devise_for :users
  resources :albums
  resources :bandas

  root to: 'home#index'
end
