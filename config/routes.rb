Rails.application.routes.draw do
  devise_for :companies
  devise_for :users
  resources :concurses
  root 'concurses#index'
end
