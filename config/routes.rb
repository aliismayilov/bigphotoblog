Bigphotoblog::Application.routes.draw do
  devise_for :users

  resources :photos, only: [ :index, :new ]
end
