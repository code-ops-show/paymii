Rails.application.routes.draw do
  devise_for :users
  
  resources :contacts

  resource :settings

  root to: "contacts#index"
end
