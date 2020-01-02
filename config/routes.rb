Rails.application.routes.draw do
  get 'home/index'

  resource :contacts, only: [:new, :create]
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
