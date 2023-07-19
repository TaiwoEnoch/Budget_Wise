Rails.application.routes.draw do
  devise_for :users
  root 'application#root'
  
  resources :groups do
    resources :entities
  end
  
  resources :users
  resources :splash, only: [:index]
  get '/sign_out_user', to: 'users#sign_out_user', as: 'sign_out_user'

end
