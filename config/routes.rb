Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # put shit in namespace

  resources :products, only: [:index, :show] do
    resources :inventories, only: [:index, :show]
    resources :styles, only: [:index, :show]
  end

  resources :inventories, only: [:index, :show] do
    resources :products, only: [:index, :show]
    resources :styles, only: [:index, :show]
  end  
  resources :styles, only: [:index, :show] do
    resources :inventories, only: [:index, :show]
    resources :products, only: [:index, :show]
  end
end