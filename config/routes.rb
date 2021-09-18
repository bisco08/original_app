Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index2"
  get 'posts/index' => 'posts#index'
  resources :posts, only: [:index, :new, :create, :show, :edit, :update]
end
