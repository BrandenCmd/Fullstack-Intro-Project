Rails.application.routes.draw do
  get 'home/index'
  resources :photos, only: %i[index show]
  resources :photographers, only: %i[index show]
  resources :about, only: %i[index]
end
