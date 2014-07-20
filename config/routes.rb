Rails.application.routes.draw do
  root  'users#index'
  resources :users

  resources :nuts do
    resources :comments
  end


  post '/users/login', to: 'users#login'
  get '/users/:id/destroy', to: 'users#destroy', :as => "sign_out"
  post '/users', to: 'users#create', :as => 'sign_in'
end
