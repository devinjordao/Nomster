Rails.application.routes.draw do
  devise_for :users
  root 'places#index'
  resources :places do
    resources :comments, only: :create
  end
  resources :places do
    resources :photos, only: :create
    resources :photos, only: :show
  end
  resources :users, only: :show
end
