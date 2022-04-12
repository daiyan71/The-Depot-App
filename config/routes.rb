Rails.application.routes.draw do
  resources :line_items
  resources :carts
  post 'remove_item/:id', to: 'line_items#removeItem' , as: 'remove_item'
  #get 'store/index'
  #resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'store#index', as: 'store_index'
  resources :products
end
