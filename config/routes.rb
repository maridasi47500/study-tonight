Rails.application.routes.draw do
  resources :sometutorials do
    member do
      get "add"
      get "tutorial/:myid", as: :tuto, action: :tuto
    end
  end
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
  get "up" => "rails/health#show", as: :rails_health_check

end
