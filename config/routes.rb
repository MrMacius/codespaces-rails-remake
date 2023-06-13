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
  get 'articles/create'

  get "users/register"
  get "users/login"
  get "users/logout"


  post "users/register" => "users#create"
  post "users/login" => "session#create"
  post "newarticle" => "articles#create"
  delete "users/logout" => "session#destroy"

  resources :users
  resources :articles
end
