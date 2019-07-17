Rails.application.routes.draw do
  devise_for :users
  root 'places#index'
  resources :places
  post 'photos', to: 'photos#create'
end
