Rails.application.routes.draw do
  get 'homes/top'
  root 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :genres, only: [:index, :create, :edit, :update, :destroy]
  resources :details, only: [:new, :create, :index, :edit, :update, :destroy]
end
