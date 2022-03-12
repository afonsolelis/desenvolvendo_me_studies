# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :searching_algorithms do
    resources :linear_search, only: :create
    resources :binary_search, only: :create
  end

  namespace :sorting_algorithms do
    resources :bubble_sort, only: :create
  end
end
