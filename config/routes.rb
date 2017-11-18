Rails.application.routes.draw do
  get 'products/report'
  get 'search/create'
  get 'search/report'
  resources :orders
  devise_for :users
  resources :products
  resources :invoices
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
