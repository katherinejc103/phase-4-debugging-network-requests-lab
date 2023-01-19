Rails.application.routes.draw do
  resources :toys, only: [:index, :create, :update, :destroy, :toy_params]
end
