Rails.application.routes.draw do
  get 'users/dashboard'
  get 'visitors/welcome'
  devise_for :users,
             controllers: {:registrations => "users/registrations"}  #devise_for :users, path_names: { registration: "registrations" }


  authenticated :user do
    root to: 'users#dashboard', as: :authenticated_root
    #root to: 'users#index', as: :authenticated_root
    resources :users


    resources :enquiries

    resources :comments do
      resources :comments
    end
    resources :listings
    resources :companies
  end

  root :to => 'visitors#welcome'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
