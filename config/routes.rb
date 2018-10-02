Rails.application.routes.draw do
  resources :users
  resources :enquiries
  resources :listings
  resources :companies

  root :to => 'companies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
