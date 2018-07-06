Rails.application.routes.draw do
  resources :powers, only: [:show, :edit, :index, :new, :create]
  resources :heroines, only: [:show, :edit, :index, :new, :create]
end
