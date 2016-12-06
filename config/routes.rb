Rails.application.routes.draw do
  devise_for :users

  # root_path
  root 'dashboard#home'

  # book resource paths
  get 'books/index'
  get 'books/show'

  # shopping_cart paths
  get 'shopping_carts/show'
  post 'shopping_carts/add'
  delete 'shopping_carts/remove'

end
