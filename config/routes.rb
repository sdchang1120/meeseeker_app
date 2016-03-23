Rails.application.routes.draw do
  root 'meeseeks#index'
  resources :meeseeks
end
