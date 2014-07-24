Rails.application.routes.draw do
  devise_for :users
  
  resources :contacts
  
  resources :projects do 
    resources :tasks
  end

  resources :tasks do 
    resources :comments
  end

  resources :settings

  root to: "contacts#index"
end
