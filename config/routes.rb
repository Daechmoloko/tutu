# frozen_string_literal: true

Rails.application.routes.draw do
  root 'welcome#index'

  resources :railway_stations
  resources :tickets
  resources :routes
  resources :trains do
    resources :wagons, only: %i[new create destory]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
