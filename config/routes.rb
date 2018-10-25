Rails.application.routes.draw do
  resources :products do
  	member do
  		delete :delete_image_attachment
    end
  end	
	devise_for :users, controllers: {
  	sessions: 'users/sessions'
      }
	resources :categories
  	root "welcome#index"
end
 
