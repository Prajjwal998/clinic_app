Rails.application.routes.draw do
  # devise_for :users
  resources :patients
  # resources :patients, only: [:index]
  resources :users, only: [:new, :create] # Adjust according to your needs
  devise_for :users, controllers: { registrations: 'users/registrations' }


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  get 'doctor_dashboard', to: 'doctors#dashboard'
  root to: 'patients#index'
  delete 'logout', to: 'users#logout', as: :logout

end
