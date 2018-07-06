Rails.application.routes.draw do
  resources :powers, only: [:index, :show]
  resources :heroines, except: [:edit, :update, :destroy]  
end
