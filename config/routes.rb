Rails.application.routes.draw do
  scope ":locale" do

   	resources :sessions, only: [:new, :create, :destroy]
  	get 'signup', to: 'users#new', as: 'signup'
  	get 'login', to: 'sessions#new', as: 'login'
  	get 'logout', to: 'sessions#destroy', as: 'logout'
  	resources :users
  	resources :tramwajs

  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end

    get 'tramwajs/index'
  	root 'tramwajs#index'

end
