Rails.application.routes.draw do
  devise_for :users
  resources :friends
  # get 'home/index'
  # config/routes.rb
  # config/routes.rb
  #delete '/users/sign_out', to: 'sessions#destroy', as: :custom_destroy_user_session
  #delete 'users/sign_out', to: 'sessions#destroy'
  get 'home/about'
  root 'home#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
