Rails.application.routes.draw do
  devise_for :users
  
  resources :contacts

  resources :settings

  root to: "contacts#index"
end
