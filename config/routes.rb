Rails.application.routes.draw do
  resources :books do
    member do
      get :borrow
      get :return_book
    end
  end
  root to: 'visitors#index'
  devise_for :users
end
