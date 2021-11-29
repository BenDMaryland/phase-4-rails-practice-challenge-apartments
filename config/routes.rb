Rails.application.routes.draw do
  resources :leases, only: [:create, :destroy]
  resources :tenants, only: [:index, :show, :update,:destroy, :create]
  resources :apartments, only: [:index, :show, :update, :destroy, :create ] 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
