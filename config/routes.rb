Rails.application.routes.draw do
  devise_for :users, :controllers => { :invitations => 'users/invitations' }
  resources :projects do
    resources :tickets
  end
  
  get 'welcome/index'
  root 'welcome#index'
end