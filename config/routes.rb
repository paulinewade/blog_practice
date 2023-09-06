Rails.application.routes.draw do
  root to: "posts#index"
  resources :users
  resources :comments
  resources :posts do
    resources :comments
  end

end
