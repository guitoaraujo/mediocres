Rails.application.routes.draw do
  resources :games
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :pearls
  devise_for :users
	
	root 'pearls#index'
end
