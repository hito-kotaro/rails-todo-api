Rails.application.routes.draw do
  resource :sessions  
  resource :users
  resource :tasks
  # post   '/login',   to: 'sessions#create'
  # delete '/logout',  to: 'sessions#destroy'
  # root 'tasks#index'
  # resources :tasks

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get '/login', to: 'sessions#new'
  # post '/login', to: 'sessins#create'
  # delete '/logout', to: 'sessions#destroy'
end
