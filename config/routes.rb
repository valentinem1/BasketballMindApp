Rails.application.routes.draw do
  resources :users, only: [:show, :new, :create]
  resources :articles, only: [:index, :show, :new, :create, :destroy]
  resources :teams, only: [:index, :show]
  resources :tags

  root 'articles#index'
  
end
