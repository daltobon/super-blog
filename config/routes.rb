Rails.application.routes.draw do
  devise_for :users
 	resources :posts, path: 'publicaciones'
 	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	resources :comments

  root "posts#index"

 end

	