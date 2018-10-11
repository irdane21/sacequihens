Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products, except: [:destroy] do
    resources :order_details
  end
  resources :orders, only: [:show, :create]
end
