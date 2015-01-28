Rails.application.routes.draw do
  devise_for :users
  resources :course_items

  resources :courses do
    member do
      get 'learn'
    end
  end

  resources :words
end
