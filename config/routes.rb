Rails.application.routes.draw do


  get 'likes/new'

  get 'likes/create'

  get 'users/profile'


  get '/search', to: 'pages#search'



  root to: 'pages#home'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :categories, only: [ :index, :show]

  resources :walks, only: [ :index, :show, :new, :create, :edit, :update ] do
    resources :reviews
    resources :points, only: [:new, :create]
    resources :user_walks, only: :create
    resources :likes, only: [:create, :destroy]
  end
end

