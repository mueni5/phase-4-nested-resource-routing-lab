Rails.application.routes.draw do
  # resources :items, only: [:index]
  # resources :users, only: [:show]

  resources :items, only: [:index, :show, :create]

  resources :users, only: [:show, :index] do 
    resources :items, only: [:index, :show, :create]
  end
end