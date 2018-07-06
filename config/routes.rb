Rails.application.routes.draw do
  resources :powers, only: [:index, :new, :show]
  resources :heroines, only: [:index, :new, :show]
end
