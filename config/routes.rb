Rails.application.routes.draw do
  resources :projects
  devise_for :users
  # get 'home/index'
  get 'about', to: 'home#about'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#dashboard'
end
