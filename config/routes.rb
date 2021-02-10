Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

#verb to: 'controller#action'
root to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/hr', to: 'pages#hr'
  get '/franchisee', to: 'pages#franchisee'
  get '/projects', to: 'pages#projects'

#CRUD
#read all employees
#get '/employees', to: 'employees#index'
#read one employee
#get '/employees/:id', to: 'employees#show'
#create an employee
#get '/employees/new', to: 'employees#new' #display the form
#post '/employees', to: 'employees#create'
#update employee
#get '/employees/:id/edit', to: 'employees#edit'
#patch '/employees/:id', to: 'employees#update'
#delete employee
#delete '/employees/:id', to: 'employees#destroy'

resources :employees
end
