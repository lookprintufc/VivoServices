Rails.application.routes.draw do
  root 'dashboard#index'

  resources :services
  resources :users do
  	delete '/services/:service_id' => 'users#remove_service', as: :remove_service_user
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
