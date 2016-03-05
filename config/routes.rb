Rails.application.routes.draw do
  root 'dashboards#show'

  resources :walls
  resource :dashboard, only: [:show]
  resources :users, only: [:new, :create, :index]
  resource :session, only: [:new, :create, :destroy]
end
