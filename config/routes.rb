Rails.application.routes.draw do
  get 'buscar', to: 'busca#index'

  get 'explorar', to: 'home#explorar'

  post 'rate', to: 'bandas#rate'

  devise_for :users
  resources :albums
  resources :bandas

  root to: 'home#index'
end
