Myflix::Application.routes.draw do
  get 'ui(/:action)', controller: 'ui'

  root to: "pages#front"
  get "home", to: "videos#index"

  resources :videos, only: [:index, :show] do
    collection do
      get :search, to: "videos#search"
    end
    resources :reviews, only: [:create]
  end
  resources :categories, only: [:index, :show]

  get 'my_queue', to: "queue_items#index"
  resources :queue_items, only: [:create, :destroy]
  post "update_queue", to: "queue_items#update_queue"

  get 'register', to: "users#new"
  get 'sign_in', to: "sessions#new"
  get 'sign_out', to: "sessions#destroy"
  resources :users, only: [:create]
  resources :sessions, only: [:create]
end
