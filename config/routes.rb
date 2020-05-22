Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "products#index"

  get "products/pagy_remote_nav_js"

  resources :products
end
