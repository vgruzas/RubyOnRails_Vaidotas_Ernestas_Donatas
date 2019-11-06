Rails.application.routes.draw do
  get 'contacts', to: 'main#contacts'
  root 'main#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
