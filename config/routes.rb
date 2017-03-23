Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'static#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :blog_articles
  resources :articles
  resources :contacts, only: [:new, :create]
  #resources :contact_us#, only: [:new, :create]
  #resources :contact_form, only: [:new, :create]

  #resources :contact_form
  #get 'callback', to:'contact_us#new'
end
