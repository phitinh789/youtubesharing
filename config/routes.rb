Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  devise_for :users

  resources :videos do
    post :vote, on: :member
  end
  root 'home#index'
end
