Rails.application.routes.draw do
  get 'categories/index'

  get 'categories/show'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :categories, only: [ :index, :show]

  resources :walks, only: [ :index, :show, :new, :create, :edit, :update ] do
    resources :user_walks, only: [ :index, :create ]
  end
end

