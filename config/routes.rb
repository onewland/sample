Rails.application.routes.draw do
  resources :users
  resources :tickets

  root 'root#index'
end
