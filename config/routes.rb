Rails.application.routes.draw do
  resources :employees
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'employees#index'
end
