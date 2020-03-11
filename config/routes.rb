Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  get 'reviews/show'
  get 'reviews/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [ :new, :create, :index]
  end
end
