Rails.application.routes.draw do
  resources :books
  root to: 'visitors#index'
  devise_for :users
end
