Rails.application.routes.draw do
  get 'home/index'

  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'

  resource :contacts, only: [:new, :create], path_names: { :new => '' }
  resources :articles do # создается вложенный список маршрутов типа /articles/:article_id/comments
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
# альтернативный метод
# get 'contacts' => 'contacts#new'
# resource :contacts, only: [:create]
