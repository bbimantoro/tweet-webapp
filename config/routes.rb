Rails.application.routes.draw do
  # user route
  get 'users/index' => 'users#index'
  get 'signup' => 'users#new'
  get 'users/:id' => 'users#show'
  post 'users/create' => 'users#create'
  get 'users/:id/edit' => 'users#edit'
  post 'users/:id/update' => 'users#update'

  # post route
  get 'post/index' => 'post#index'
  get 'post/new' => 'post#new'
  get 'post/:id' => 'post#show'
  post 'post/create' => 'post#create'
  get 'post/:id/edit' => 'post#edit'
  post 'post/:id/update' => 'post#update'
  post 'post/:id/destroy' => 'post#destroy'

  
  get '/' => 'home#top'
  get 'about' => 'home#about'
end
