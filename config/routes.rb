Rails.application.routes.draw do
  resources :somecodings do
    member do
      get "add"
    end
  end
  resources :codings do
    member do
      get "add"
      get "mycoding/:myid", as: :mycoding, action: :mycoding
    end
  end
  resources :programminglanguages
  resources :anycodings
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
  post "/mycode" => "welcome#code"
  get "up" => "rails/health#show", as: :rails_health_check

end
