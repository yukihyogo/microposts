Rails.application.routes.draw do
  get 'sessions/new'

#  get 'users/new'

#  root to: 'static_pages#home'

  root to: 'static_pages#home'
  get 'signup',  to: 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  

  resources :users do
    member do
      get 'followings'
      get 'followers'
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :microposts
  resources :relationships, only: [:create, :destroy]
end
