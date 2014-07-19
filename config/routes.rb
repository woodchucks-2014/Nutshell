Rails.application.routes.draw do
  root  'users#index'
  resources :users

  post '/users/login', to: 'users#login'
end
