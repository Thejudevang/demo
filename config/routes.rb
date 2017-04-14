Rails.application.routes.draw do
  get 'welcome/index'

  resources :cities
  resources :store_locations
  resources :brands
  resources :stores
  resources :products do
  	resources :inventories, only: [:new, :create, :edit, :update]

  	member do
  		get :inventories
  	end
  end
  
  resources :inventories, only: [:show, :destroy, :index]

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
