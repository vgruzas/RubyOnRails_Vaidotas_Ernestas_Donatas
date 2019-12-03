Rails.application.routes.draw do
  resources :products
  get 'contacts', to: 'main#contacts'
  get 'gallery', to: 'gallery#index'
  root 'main#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
