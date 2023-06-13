Rails.application.routes.draw do
  get 'session/new'
  get 'session/create'
  get 'session/destroy'
  get 'public/home'
  get 'public/home2'
  get 'users/new'
  get 'users/create'
  get 'users/show'
  get 'articles/index'
  get 'articles/new'
  get 'articles/create'
  get 'articles/show'
  root "public#home"

  post "user/register" => "user#create"
  post "user/login" => "sessions#create"
  post "articles/newarticle" => "articles#create"
  delete "logout" => "sessions#destroy"

  resources :users
  resources :articles
end
