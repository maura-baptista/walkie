Rails.application.routes.draw do


  get 'likes/new'

  get 'likes/create'

  get "form_point" => "points#new_form_point", as: :form_point


  get 'users/profile'


  get 'reviews/index'

  get 'reviews/new'

  get 'reviews/create'

  get 'reviews/edit'

  get 'reviews/update'

  get 'reviews/destroy'

  get '/search', to: 'pages#search'


  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :categories, only: [ :index, :show]

  resources :walks, only: [ :index, :show, :new, :create, :edit, :update ] do
    resources :points, only: [:new, :create]
    resources :user_walks, only: [ :index, :create, :new ]
    member do
      get "like", to: "likes#create"
    end
  end
end

