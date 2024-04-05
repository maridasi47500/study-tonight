Rails.application.routes.draw do
   devise_for :users, controllers: { registrations: 'users/registrations',sessions: 'users/sessions' }
  resources :tutorials
  resources :mytutoriallists do
    member do
      get "add"
    end
  end
  resources :mytutorials do
    member do
      get "add"
    end
  end
  root 'welcome#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
