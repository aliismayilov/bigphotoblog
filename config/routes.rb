Bigphotoblog::Application.routes.draw do
  devise_for :users

  resources :photos, only: [ :index, :new, :create ]

  root to: 'photos#index'
end
