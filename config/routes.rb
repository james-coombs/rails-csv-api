# frozen_string_literal: true
Rails.application.routes.draw do
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
  resources :samples do
    collection do
      post :import
      get :json
    end
  end
  root to: 'samples#json'
end
