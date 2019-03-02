Rails.application.routes.draw do
  resources :products
  resources :transactions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "products#index"
end