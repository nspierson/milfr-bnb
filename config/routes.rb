Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  resources :mothers, only: [:show, :index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [] do
    resources :mothers, only: [:show, :new, :create]
  end

end
