Rails.application.routes.draw do
  root 'static#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :blog_articles
  resources :articles

  get 'contact_us', to:'static#contact_us'
end
