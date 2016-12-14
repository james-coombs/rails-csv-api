# frozen_string_literal: true
Rails.application.routes.draw do
  # samples routes including GET sampes/json, POST samples/import
  resources :samples do
    collection do
      post :import
      get :json
    end
  end
  root to: 'samples#json'
end
