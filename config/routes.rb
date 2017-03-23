Rails.application.routes.draw do
  resources :contact_forms, only: [:new, :create]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :blog_articles
  resources :articles
  root 'static#index'

end
