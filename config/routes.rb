Rails.application.routes.draw do
  # get 'products/create'
  post 'products/new'
  # get 'products/show'
  # get 'products/update'
  # get 'products/destroy'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'

  get 'home/search'

  resources :products
end
