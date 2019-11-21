Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  get 'pages/:id', to: 'pages#show', as: :user
  
  resources :bookings, only: :show

  resources :mothers, only: [:show, :index] do
    resources :bookings, only: :create
    resources :reviews, only: :create
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [] do
    resources :mothers, only: [:new, :create]
  end

  resources :mothers, only: [:edit, :update, :destroy]


end
