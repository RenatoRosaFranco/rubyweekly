# frozen_string_literal: true

Rails.application.routes.draw do

  root 'home#index'

  get '/subscriptions' => 'subscriptions#index'
  resources :lessons, only: [:show]
  resources :leads, only: [:create], param: :token do
    member do
      get '/subscriptions/success' => 'subscriptions#success'
    end
  end
end
