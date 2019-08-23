Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :announces do
    resources :bookings, only: [:create]
  end
  resources :bookings, except: [:create] do
  get "accept", to: "bookings#accept"
  get "decline", to: "bookings#decline"
  end
  get "dashboard", to:"pages#dashboard"
end
