Rails.application.routes.draw do
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  devise_for :users
  resources :users, only: [:show, :edit, :update, :index]
  root 'homes#top'
  get 'home/about' => 'homes#about', as: 'about'
end
