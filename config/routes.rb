Rails.application.routes.draw do
  # get 'home/index'
  # get 'posts/posts'
  # get 'home/home'
  # get 'users/users'

  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'home#index'
end
