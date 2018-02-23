Rails.application.routes.draw do
  	

  devise_for :users

  root 'page#home'

  get 'accueil' => 'page#home'
  get 'users' => 'users#index'
  get 'classes' => 'classes#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
