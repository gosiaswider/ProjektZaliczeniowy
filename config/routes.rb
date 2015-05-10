Rails.application.routes.draw do
  devise_for :users
  resources :projects do
    resources :tickets
  end
  
  get 'welcome/index'
  root 'welcome#index'
end