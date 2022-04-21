Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/create'
  get 'pages/dashboard'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"
  # root "articles#index"
end
