Rails.application.routes.draw do
  get 'static_pages/root'
  get 'pdf/index'
  get 'categories/create'
  get 'categories/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post '/auth/azureactivedirectory/callback', to: 'auth#callback'
  post '/auth/:provider/failure', to: 'auth#failure'
  
  # Defines the root path route ("/")
  # root "articles#index"
  resources :users
end
