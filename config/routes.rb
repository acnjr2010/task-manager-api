require 'api_version_constraint'

Rails.application.routes.draw do
  # devise_for :users
  namespace :api, defaults: { format: :json }, path: '/' do
    namespace :v0, path: '/', constraints: ApiVersionConstraint.new(version: 1, default: true) do
      resources :users, only: [:show, :create, :update, :destroy]
    end
  end
end
