Rails.application.routes.draw do
  get 'products/report'
  get 'search/create'
  get 'search/report'
  resources :orders
  devise_for :users, :skip => [:registrations]
  as :user do
  # Registrations
  get   '/users/sign_up'   => 'users/registrations#new', as: :new_user_registration
  post  '/users/sign_up'   => 'users/registrations#create', as: :user_registration
end
  resources :products
  resources :invoices
  root 'welcome#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
