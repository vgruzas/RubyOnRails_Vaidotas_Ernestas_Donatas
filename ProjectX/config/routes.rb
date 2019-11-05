Rails.application.routes.draw do
  get 'aboutus', to: 'main#about'
  root 'main#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
