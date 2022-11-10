Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'users/registrations' }


  resources :profils, only: [:show, :create] do
    resources :avatars, only: [:create, :destroy]
  end
  resources :articles do 
    resources :images, only: [:create, :destroy] 
  end 

  resources :comments
  resources :rates
  
  
  root to: 'articles#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
