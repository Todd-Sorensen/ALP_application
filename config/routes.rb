Rails.application.routes.draw do
  authenticated :user, ->(user) { user.admin? } do
    get 'admin', to: 'admin#index'
    get 'admin/projects'
    get 'admin/users'
    get 'admin/show_project'
    get 'users/profile'
  end
  resources :projects
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # get 'home/index'
  get 'about', to: 'home#about'
  get 'dashboard', to:'projects#index'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#home'
end
