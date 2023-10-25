Rails.application.routes.draw do
  # Define the root path route
  root "users#index"

  # Users routes
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show]
  end
end
