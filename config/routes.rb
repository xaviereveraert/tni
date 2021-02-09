Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

#verb to: 'controller#action'
root to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/hr', to: 'pages#hr'
  get '/franchisee', to: 'pages#franchisee'
  get '/projects', to: 'pages#projects'
end
