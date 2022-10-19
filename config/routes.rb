Rails.application.routes.draw do
  root 'top#main'
  resources :products, only: %i[index new create destroy]
  resources :cart_items, only: %i[new create destroy]
  resources :carts, only: %i[show]
end
