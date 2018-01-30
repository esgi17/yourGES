Rails.application.routes.draw do
	root 'home#index'
	resources :accueil
	resources :classes
	resources :student
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
