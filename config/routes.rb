# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :matrics_details, only: %i[index new show create]
      resources :school_details, only: %i[index new show create]
    end
  end
end
