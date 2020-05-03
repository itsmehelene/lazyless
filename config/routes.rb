Rails.application.routes.draw do
  resources :tasks, only: [:create, :index, :new, :show]
end
