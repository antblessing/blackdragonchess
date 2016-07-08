Rails.application.routes.draw do

  resources :chess_classes do
    resources :class_instructors
  end

  resources :instructors

  devise_for :users

  get 'welcome/index'

  get 'welcome/about'

  root "welcome#index"
  
end
