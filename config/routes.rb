Rails.application.routes.draw do

  # Kept the powers resoures with access only to the index and show page, b/c our app does not allow the user to do anything else with powers, aside from view their index and show pages.
  resources :powers, only: [:index, :show]

  resources :heroines, only: [:index, :show, :new, :create]
  
end
