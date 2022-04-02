Rails.application.routes.draw do
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
