# frozen_string_literal: true

Rails.application.routes.draw do
  put '/speek/:id/like', to: 'speeks#like', as: 'like'
  root to: 'home#index'

  resources :speeks do
    resources :comments, module: :speeks
  end
  devise_for :users
end
