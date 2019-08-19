Rails.application.routes.draw do
  devise_for :users
<<<<<<< HEAD
=======
  # root to: "home#index"
>>>>>>> a7c2f9cdecb6375a553dcf2be0d333d0b72ec6dd
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
