Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :yachts, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:show, :new, :create]
  end
  resources :bookings, only: :index
  get '/users/bookings', to: 'users#bookings'
  get '/users/yachts', to: 'users#yachts'
  delete "/yachts/:id", to: "yachts#destroy", as: :yachts_delete
end
