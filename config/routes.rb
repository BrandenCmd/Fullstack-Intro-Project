Rails.application.routes.draw do
  resources :photos, only: %i[index show]
  resources :photographers, only: %i[index show]
  resources :about, only: %i[index]
end
