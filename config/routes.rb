Rails.application.routes.draw do
  # Define the root path route
  root "users#index"

  # Users routes
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index]
  end

  # Posts routes
  resources :posts, only: [:show]
end
