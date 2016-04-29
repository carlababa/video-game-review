Rails.application.routes.draw do
  devise_for :users
  root "categories#index"

  resources :categories do
    resources :games
  end

  resources :games do
    resources :reviews
  end
end
