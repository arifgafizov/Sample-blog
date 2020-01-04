Rails.application.routes.draw do
  get 'home/index'

  resource :contacts, only: [:new, :create], path_names: { :new => '' }
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
# альтернативный метод
# get 'contacts' => 'contacts#new'
# resource :contacts, only: [:create]
