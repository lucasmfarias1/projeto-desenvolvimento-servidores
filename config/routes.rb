Rails.application.routes.draw do
  get 'req', to: 'admin#index'
  get 'buscar', to: 'busca#index'

  get 'explorar', to: 'home#explorar'

  post 'rate_banda', to: 'bandas#rate'
  post 'rate_album', to: 'albums#rate'

  get 'admin', to: 'home#admin_panel'

  get 'aprova_banda/:id', to: 'admin#aprova_banda'
  get 'reprova_banda/:id', to: 'admin#reprova_banda'

  get 'aprova_album/:id', to: 'admin#aprova_album'
  get 'reprova_album/:id', to: 'admin#reprova_album'

  devise_for :users
  
  resources :bandas do
    resources :albums, shallow: true
  end

  get 'albums', to: 'albums#index'

  root to: 'home#index'
end
