Rails.application.routes.draw do
  get 'buscar', to: 'busca#index'

  get 'explorar', to: 'home#explorar'

  post 'rate_banda', to: 'bandas#rate'
  post 'rate_album', to: 'albums#rate'

  devise_for :users
  resources :albums
  resources :bandas

  root to: 'home#index'
end
