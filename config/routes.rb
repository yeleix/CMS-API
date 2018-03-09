# frozen_string_literal: true

Rails.application.routes.draw do
  resources :contractors
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  # get '/contractors' => 'contractors#index'
  # get '/contractors/:id' => 'contractors#show'
  # delete '/contractors/:id' => 'contractors#destroy'
  # patch '/contractors/:id' => 'contractors#update'
  # post '/contractors' => 'contractors#create'
end
