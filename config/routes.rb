Rails.application.routes.draw do
  resources :products
  resources :posts
  resources :productimgs, only: [:new, :create, :index, :show]
  # get 'welcome/index'
   devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
      resources :categories
# resources :users, only: [:new, :create, :destroy, :show, :edit, :update]
#  resources :sessions, only: [:new, :create, :destroy, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root "welcome#index"
end
 
