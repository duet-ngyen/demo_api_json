Rails.application.routes.draw do
  require "api_constraints"
  devise_for(:users, :controllers => { :sessions => "sessions" })
  resources :books
  resources :users
  root "books#index"
  # devise_scope :user do
  #   authenticated :user do
  #     root "books#index", as: :authenticated_root
  #   end
  #   unauthenticated do
  #     root "books#index", as: :unauthenticated_root
  #   end
  # end

  namespace :api, defaults: {format: "json"} do
    devise_for :users, only: :session
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      resources :books
    end
  end
end
