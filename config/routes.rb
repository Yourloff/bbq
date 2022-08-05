Rails.application.routes.draw do
  resources :photos
  devise_for :users, controller: { omniauth_callback: 'users/omniauth_callbacks' }
  resources :users, only: [:show, :edit, :update]
  root "events#index"

  resources :events do
    resources :comments, only: [:create, :destroy]
    resources :subscriptions, only: [:create, :destroy]
    resources :photos, only: [:create, :destroy]
    post :show, on: :member
  end
end
