# frozen_string_literal: true

Rails.application.routes.draw do
  get '/search', to: 'speeks#search', as: 'search_page'
  put '/speek/:id/like', to: 'speeks#like', as: 'like'
  root to: 'home#index'

  resources :favorite_speeks, only: %i[index create destroy]

  resources :speeks do
    resources :comments, module: :speeks
  end
  devise_for :users
end
