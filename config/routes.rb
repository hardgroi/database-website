Rails.application.routes.draw do
  devise_for :users

  # root_path
  root 'dashboard#home'

  # book resource paths
  get 'books/index'
  get 'books/show'
end
