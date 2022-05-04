Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #categories
  get '/categories' => 'categories#index'
  get '/categories/new' => 'categories#new', as: "new_category"
  post '/categories' => 'categories#create', as: "create_category"
  get '/categories/:id' => 'categories#show', as: "category"
  get '/categories/:id/edit' => 'categories#edit', as: "edit_category"
  patch '/categories/:id' => 'categories#update', as: "update_category"
  delete '/categories/:id' => 'categories#delete', as: "delete_category"
end