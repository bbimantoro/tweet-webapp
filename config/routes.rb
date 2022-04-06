Rails.application.routes.draw do
  # like route
  post 'likes/:post_id/create' => 'likes#create'
  post 'likes/:post_id/destroy' => 'likes#destroy'
  
  # user login route
  get 'login' => 'users#login_form'
  post 'login' => 'users#login'
  post 'logout' => 'users#logout'

  # user signup route
  get 'users/index' => 'users#index'
  get 'signup' => 'users#new'
  get 'users/:id' => 'users#show'
  post 'users/create' => 'users#create'
  get 'users/:id/edit' => 'users#edit'
  post 'users/:id/update' => 'users#update'
  get 'users/:id/likes' => 'users#likes'

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
