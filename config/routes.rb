Rails.application.routes.draw do
  resources :comments, only: %w[create destroy new]
  resources :communities, only: %w[create destroy new show]
  resources :submissions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
