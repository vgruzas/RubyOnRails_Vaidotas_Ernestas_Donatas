Rails.application.routes.draw do
  devise_for :users , :controllers => {registrations: 'registrations'}
  resources :users
  resources :products
  get 'contacts', to: 'main#contacts'
  get 'gallery', to: 'gallery#index'
  root 'main#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
