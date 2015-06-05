Rails.application.routes.draw do
  resources :books do
    member do
      get :borrow
    end
  end
  root to: 'visitors#index'
  devise_for :users
end
