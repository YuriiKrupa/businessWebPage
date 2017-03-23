Rails.application.routes.draw do
  resources :contact_forms#, only: [:new, :create, :show]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :blog_articles
  resources :articles
  #resources :contacts, only: [:new, :create]
  root 'static#index'

end
