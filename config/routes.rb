Rails.application.routes.draw do
  
  root "public#home"
  
  get 'session/new'
  get 'session/create'
  get 'session/destroy'
  get 'public/home'
  get 'public/home2'

  get 'users/create'
  get 'users/show'
  
  get 'articles/index'
  get 'articles/newarticle'
  get 'articles/comments'
  get 'articles/create'
  get 'articles/newcom'

  get "users/register"
  get "users/login"
  get "users/logout"


  post "users/register" => "users#create"
  post "users/login" => "session#create"
  post "articles/newarticle" => "articles#create"
  post "articles/newcom" => "comments#create"
  delete "users/logout" => "session#destroy"

  resources :users
  resources :articles
  resources :comments
  
end
